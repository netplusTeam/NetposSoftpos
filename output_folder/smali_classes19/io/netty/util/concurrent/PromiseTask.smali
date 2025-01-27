.class Lio/netty/util/concurrent/PromiseTask;
.super Lio/netty/util/concurrent/DefaultPromise;
.source "PromiseTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/PromiseTask$SentinelRunnable;,
        Lio/netty/util/concurrent/PromiseTask$RunnableAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/DefaultPromise<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:Ljava/lang/Runnable;

.field private static final COMPLETED:Ljava/lang/Runnable;

.field private static final FAILED:Ljava/lang/Runnable;


# instance fields
.field private task:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lio/netty/util/concurrent/PromiseTask$SentinelRunnable;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/PromiseTask$SentinelRunnable;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/util/concurrent/PromiseTask;->COMPLETED:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Lio/netty/util/concurrent/PromiseTask$SentinelRunnable;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/PromiseTask$SentinelRunnable;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/util/concurrent/PromiseTask;->CANCELLED:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lio/netty/util/concurrent/PromiseTask$SentinelRunnable;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/PromiseTask$SentinelRunnable;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/util/concurrent/PromiseTask;->FAILED:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 73
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 74
    iput-object p2, p0, Lio/netty/util/concurrent/PromiseTask;->task:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 69
    if-nez p3, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/PromiseTask$RunnableAdapter;

    invoke-direct {v0, p2, p3}, Lio/netty/util/concurrent/PromiseTask$RunnableAdapter;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lio/netty/util/concurrent/PromiseTask;->task:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 79
    iput-object p2, p0, Lio/netty/util/concurrent/PromiseTask;->task:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method private clearTaskAfterCompletion(ZLjava/lang/Runnable;)Z
    .locals 0
    .param p1, "done"    # Z
    .param p2, "result"    # Ljava/lang/Runnable;

    .line 115
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    if-eqz p1, :cond_0

    .line 120
    iput-object p2, p0, Lio/netty/util/concurrent/PromiseTask;->task:Ljava/lang/Object;

    .line 122
    :cond_0
    return p1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .line 176
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->cancel(Z)Z

    move-result v0

    sget-object v1, Lio/netty/util/concurrent/PromiseTask;->CANCELLED:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lio/netty/util/concurrent/PromiseTask;->clearTaskAfterCompletion(ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 84
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    .line 105
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/PromiseTask;->setUncancellableInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lio/netty/util/concurrent/PromiseTask;->runTask()Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/PromiseTask;->setSuccessInternal(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :cond_0
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/PromiseTask;->setFailureInternal(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 112
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method final runTask()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseTask;->task:Ljava/lang/Object;

    .line 95
    .local v0, "task":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    .line 96
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 98
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 99
    const/4 v1, 0x0

    return-object v1
.end method

.method public final setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected final setFailureInternal(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 132
    sget-object v0, Lio/netty/util/concurrent/PromiseTask;->FAILED:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lio/netty/util/concurrent/PromiseTask;->clearTaskAfterCompletion(ZLjava/lang/Runnable;)Z

    .line 133
    return-object p0
.end method

.method public final setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected final setSuccessInternal(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 152
    sget-object v0, Lio/netty/util/concurrent/PromiseTask;->COMPLETED:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lio/netty/util/concurrent/PromiseTask;->clearTaskAfterCompletion(ZLjava/lang/Runnable;)Z

    .line 153
    return-object p0
.end method

.method public final setUncancellable()Z
    .locals 1

    .line 167
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected final setUncancellableInternal()Z
    .locals 1

    .line 171
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->setUncancellable()Z

    move-result v0

    return v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 181
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 184
    const-string v1, " task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/util/concurrent/PromiseTask;->task:Ljava/lang/Object;

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    return-object v1
.end method

.method public final tryFailure(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 138
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected final tryFailureInternal(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 142
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    sget-object v1, Lio/netty/util/concurrent/PromiseTask;->FAILED:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lio/netty/util/concurrent/PromiseTask;->clearTaskAfterCompletion(ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final trySuccess(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 158
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method protected final trySuccessInternal(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/netty/util/concurrent/PromiseTask;, "Lio/netty/util/concurrent/PromiseTask<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->trySuccess(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lio/netty/util/concurrent/PromiseTask;->COMPLETED:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lio/netty/util/concurrent/PromiseTask;->clearTaskAfterCompletion(ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
