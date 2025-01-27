.class Lio/netty/util/concurrent/SingleThreadEventExecutor$4;
.super Ljava/lang/Object;
.source "SingleThreadEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/SingleThreadEventExecutor;->doStartThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 978
    iput-object p1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 981
    move-object/from16 v1, p0

    const-string v2, ".confirmShutdown() must be called before run() implementation terminates."

    const-string v3, " implementation; "

    const-string v4, "Buggy "

    const-string v5, "An event executor terminated with non-empty task queue ("

    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-static {v0, v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$102(Lio/netty/util/concurrent/SingleThreadEventExecutor;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 982
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$200(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$100(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 986
    :cond_0
    const/4 v6, 0x0

    .line 987
    .local v6, "success":Z
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->updateLastExecutionTime()V

    .line 989
    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x29

    const/4 v12, 0x0

    const/4 v13, 0x5

    :try_start_0
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 990
    const/4 v6, 0x1

    .line 995
    :goto_0
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    move-result v0

    .line 996
    .local v0, "oldState":I
    if-ge v0, v10, :cond_2

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v14

    iget-object v15, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v14, v15, v0, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 998
    goto :goto_1

    .line 1000
    .end local v0    # "oldState":I
    :cond_1
    goto :goto_0

    .line 1003
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$600(Lio/netty/util/concurrent/SingleThreadEventExecutor;)J

    move-result-wide v14

    cmp-long v0, v14, v7

    if-nez v0, :cond_3

    .line 1004
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1005
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v7, Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1006
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1005
    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 1016
    :cond_3
    :try_start_1
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1017
    nop

    .line 1024
    :goto_2
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    move-result v0

    .line 1025
    .restart local v0    # "oldState":I
    if-ge v0, v9, :cond_5

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v0, v9}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1027
    goto :goto_3

    .line 1029
    .end local v0    # "oldState":I
    :cond_4
    goto :goto_2

    .line 1033
    :cond_5
    :goto_3
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1036
    :try_start_2
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1042
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0, v2, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v0

    .line 1047
    .local v0, "numUserTasks":I
    if-lez v0, :cond_6

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_6
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v12}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v0    # "numUserTasks":I
    nop

    .line 1053
    :goto_4
    nop

    .line 1054
    goto/16 :goto_9

    .line 1042
    :catchall_0
    move-exception v0

    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .local v2, "numUserTasks":I
    if-lez v2, :cond_7

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_7
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    invoke-interface {v3, v12}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    throw v0

    .line 1035
    :catchall_1
    move-exception v0

    .line 1036
    :try_start_3
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1042
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .restart local v2    # "numUserTasks":I
    if-lez v2, :cond_8

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_8
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    invoke-interface {v3, v12}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    nop

    .line 1053
    throw v0

    .line 1042
    :catchall_2
    move-exception v0

    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .restart local v2    # "numUserTasks":I
    if-lez v2, :cond_9

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_9
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    invoke-interface {v3, v12}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    throw v0

    .line 991
    :catchall_3
    move-exception v0

    .line 992
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v14

    const-string v15, "Unexpected exception from an event executor: "

    invoke-interface {v14, v15, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 995
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_5
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    move-result v0

    .line 996
    .local v0, "oldState":I
    if-ge v0, v10, :cond_b

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v14

    iget-object v15, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v14, v15, v0, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 998
    goto :goto_6

    .line 1000
    .end local v0    # "oldState":I
    :cond_a
    goto :goto_5

    .line 1003
    :cond_b
    :goto_6
    if-eqz v6, :cond_c

    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$600(Lio/netty/util/concurrent/SingleThreadEventExecutor;)J

    move-result-wide v14

    cmp-long v0, v14, v7

    if-nez v0, :cond_c

    .line 1004
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1005
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v7, Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1006
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1005
    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 1016
    :cond_c
    :try_start_5
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1017
    nop

    .line 1024
    :goto_7
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    move-result v0

    .line 1025
    .restart local v0    # "oldState":I
    if-ge v0, v9, :cond_e

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v0, v9}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1027
    goto :goto_8

    .line 1029
    .end local v0    # "oldState":I
    :cond_d
    goto :goto_7

    .line 1033
    :cond_e
    :goto_8
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1036
    :try_start_6
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1042
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0, v2, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v0, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v0

    .line 1047
    .local v0, "numUserTasks":I
    if-lez v0, :cond_f

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_f
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v2

    invoke-interface {v2, v12}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v0    # "numUserTasks":I
    goto/16 :goto_4

    .line 1055
    :goto_9
    return-void

    .line 1042
    :catchall_4
    move-exception v0

    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .restart local v2    # "numUserTasks":I
    if-lez v2, :cond_10

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_10
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    invoke-interface {v3, v12}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    throw v0

    .line 1035
    :catchall_5
    move-exception v0

    .line 1036
    :try_start_7
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1042
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .restart local v2    # "numUserTasks":I
    if-lez v2, :cond_11

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_11
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    invoke-interface {v3, v12}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    nop

    .line 1053
    throw v0

    .line 1042
    :catchall_6
    move-exception v0

    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .restart local v2    # "numUserTasks":I
    if-lez v2, :cond_12

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_12
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    invoke-interface {v3, v12}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    throw v0

    .line 994
    :catchall_7
    move-exception v0

    .line 995
    :goto_a
    iget-object v14, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v14}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    move-result v14

    .line 996
    .local v14, "oldState":I
    if-ge v14, v10, :cond_14

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v15

    iget-object v12, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v15, v12, v14, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 998
    goto :goto_b

    .line 1000
    .end local v14    # "oldState":I
    :cond_13
    const/4 v12, 0x0

    goto :goto_a

    .line 1003
    :cond_14
    :goto_b
    if-eqz v6, :cond_15

    iget-object v10, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v10}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$600(Lio/netty/util/concurrent/SingleThreadEventExecutor;)J

    move-result-wide v14

    cmp-long v7, v14, v7

    if-nez v7, :cond_15

    .line 1004
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v7

    invoke-interface {v7}, Lio/netty/util/internal/logging/InternalLogger;->isErrorEnabled()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1005
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v8, Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 1006
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1005
    invoke-interface {v7, v2}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 1016
    :cond_15
    :try_start_8
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1017
    nop

    .line 1024
    :goto_c
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$400(Lio/netty/util/concurrent/SingleThreadEventExecutor;)I

    move-result v2

    .line 1025
    .local v2, "oldState":I
    if-ge v2, v9, :cond_17

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    iget-object v4, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3, v4, v2, v9}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1027
    goto :goto_d

    .line 1029
    .end local v2    # "oldState":I
    :cond_16
    goto :goto_c

    .line 1033
    :cond_17
    :goto_d
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 1036
    :try_start_9
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 1042
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .local v2, "numUserTasks":I
    if-lez v2, :cond_18

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_18
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    nop

    .line 1053
    nop

    .line 1054
    throw v0

    .line 1042
    :catchall_8
    move-exception v0

    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .restart local v2    # "numUserTasks":I
    if-lez v2, :cond_19

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_19
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    throw v0

    .line 1035
    :catchall_9
    move-exception v0

    .line 1036
    :try_start_a
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1042
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .restart local v2    # "numUserTasks":I
    if-lez v2, :cond_1a

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_1a
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    nop

    .line 1053
    throw v0

    .line 1042
    :catchall_a
    move-exception v0

    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 1044
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2, v3, v13}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 1045
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$700(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1046
    iget-object v2, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->drainTasks()I

    move-result v2

    .line 1047
    .restart local v2    # "numUserTasks":I
    if-lez v2, :cond_1b

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1048
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 1051
    :cond_1b
    iget-object v3, v1, Lio/netty/util/concurrent/SingleThreadEventExecutor$4;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$800(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 1052
    .end local v2    # "numUserTasks":I
    throw v0
.end method
