.class Lorg/jpos/util/ThreadPool$PooledThread;
.super Ljava/lang/Thread;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PooledThread"
.end annotation


# instance fields
.field currentJob:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jpos/util/ThreadPool;


# direct methods
.method public constructor <init>(Lorg/jpos/util/ThreadPool;)V
    .locals 2

    .line 58
    iput-object p1, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-static {p1}, Lorg/jpos/util/ThreadPool;->access$000(Lorg/jpos/util/ThreadPool;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PooledThread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/jpos/util/ThreadPool;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 56
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jpos/util/ThreadPool$PooledThread;->currentJob:Ljava/lang/Object;

    .line 61
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/jpos/util/ThreadPool$PooledThread;->setDaemon(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 65
    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool$PooledThread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "name":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-static {v1}, Lorg/jpos/util/ThreadPool;->access$200(Lorg/jpos/util/ThreadPool;)Lorg/jpos/util/BlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/util/BlockingQueue;->ready()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-static {v1}, Lorg/jpos/util/ThreadPool;->access$200(Lorg/jpos/util/ThreadPool;)Lorg/jpos/util/BlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/util/BlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "job":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-running"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jpos/util/ThreadPool$PooledThread;->setName(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jpos/util/BlockingQueue$Closed; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    iput-object v1, p0, Lorg/jpos/util/ThreadPool$PooledThread;->currentJob:Ljava/lang/Object;

    .line 73
    iget-object v4, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-static {v4}, Lorg/jpos/util/ThreadPool;->access$308(Lorg/jpos/util/ThreadPool;)I

    .line 74
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 76
    :try_start_2
    move-object v2, v1

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-idle"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jpos/util/ThreadPool$PooledThread;->setName(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v2

    .line 79
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-idle-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jpos/util/ThreadPool$PooledThread;->setName(Ljava/lang/String;)V

    .line 81
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v2, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/jpos/util/BlockingQueue$Closed; {:try_start_3 .. :try_end_3} :catch_0

    .line 82
    :try_start_4
    iput-object v3, p0, Lorg/jpos/util/ThreadPool$PooledThread;->currentJob:Ljava/lang/Object;

    .line 83
    iget-object v3, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-static {v3}, Lorg/jpos/util/ThreadPool;->access$408(Lorg/jpos/util/ThreadPool;)I

    .line 84
    iget-object v3, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-static {v3}, Lorg/jpos/util/ThreadPool;->access$310(Lorg/jpos/util/ThreadPool;)I

    .line 85
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "name":Ljava/lang/String;
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/jpos/util/BlockingQueue$Closed; {:try_start_5 .. :try_end_5} :catch_0

    .line 74
    .restart local v0    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v0    # "name":Ljava/lang/String;
    :try_start_7
    throw v3

    .line 87
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/jpos/util/BlockingQueue$Closed; {:try_start_7 .. :try_end_7} :catch_0

    .line 88
    :try_start_8
    iput-object v3, p0, Lorg/jpos/util/ThreadPool$PooledThread;->currentJob:Ljava/lang/Object;

    .line 89
    iget-object v3, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-static {v3}, Lorg/jpos/util/ThreadPool;->access$408(Lorg/jpos/util/ThreadPool;)I

    .line 90
    monitor-exit v2

    .line 92
    .end local v1    # "job":Ljava/lang/Object;
    :goto_2
    goto/16 :goto_0

    .line 90
    .restart local v1    # "job":Ljava/lang/Object;
    :catchall_3
    move-exception v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v0    # "name":Ljava/lang/String;
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/jpos/util/BlockingQueue$Closed; {:try_start_9 .. :try_end_9} :catch_0

    .line 97
    .end local v1    # "job":Ljava/lang/Object;
    .restart local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Lorg/jpos/util/BlockingQueue$Closed;
    iget-object v2, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-static {v2}, Lorg/jpos/util/ThreadPool;->access$500(Lorg/jpos/util/ThreadPool;)Lorg/jpos/util/Logger;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 99
    new-instance v2, Lorg/jpos/util/LogEvent;

    iget-object v3, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v1}, Lorg/jpos/util/BlockingQueue$Closed;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    goto :goto_3

    .line 93
    .end local v1    # "e":Lorg/jpos/util/BlockingQueue$Closed;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-static {v2}, Lorg/jpos/util/ThreadPool;->access$500(Lorg/jpos/util/ThreadPool;)Lorg/jpos/util/Logger;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 95
    new-instance v2, Lorg/jpos/util/LogEvent;

    iget-object v3, p0, Lorg/jpos/util/ThreadPool$PooledThread;->this$0:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 101
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    nop

    .line 102
    :cond_2
    :goto_3
    return-void
.end method

.method public declared-synchronized supervise()V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/ThreadPool$PooledThread;->currentJob:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/jpos/util/ThreadPool$Supervised;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jpos/util/ThreadPool$Supervised;

    invoke-interface {v0}, Lorg/jpos/util/ThreadPool$Supervised;->expired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool$PooledThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local p0    # "this":Lorg/jpos/util/ThreadPool$PooledThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
