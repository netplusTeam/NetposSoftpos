.class final Lio/netty/util/concurrent/RejectedExecutionHandlers$2;
.super Ljava/lang/Object;
.source "RejectedExecutionHandlers.java"

# interfaces
.implements Lio/netty/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/RejectedExecutionHandlers;->backoff(IJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/RejectedExecutionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$backOffNanos:J

.field final synthetic val$retries:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 52
    iput p1, p0, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;->val$retries:I

    iput-wide p2, p0, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;->val$backOffNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejected(Ljava/lang/Runnable;Lio/netty/util/concurrent/SingleThreadEventExecutor;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 55
    invoke-virtual {p2}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;->val$retries:I

    if-ge v0, v1, :cond_1

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->wakeup(Z)V

    .line 60
    iget-wide v1, p0, Lio/netty/util/concurrent/RejectedExecutionHandlers$2;->val$backOffNanos:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 61
    invoke-virtual {p2, p1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->offerTask(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    return-void

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
.end method
