.class final Ljava9/util/concurrent/CompletableFuture$Signaller;
.super Ljava9/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"

# interfaces
.implements Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Signaller"
.end annotation


# instance fields
.field final deadline:J

.field interrupted:Z

.field final interruptible:Z

.field nanos:J

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(ZJJ)V
    .locals 1
    .param p1, "interruptible"    # Z
    .param p2, "nanos"    # J
    .param p4, "deadline"    # J

    .line 1828
    invoke-direct {p0}, Ljava9/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1829
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1830
    iput-boolean p1, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    .line 1831
    iput-wide p2, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->nanos:J

    .line 1832
    iput-wide p4, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->deadline:J

    .line 1833
    return-void
.end method


# virtual methods
.method public block()Z
    .locals 4

    .line 1852
    :goto_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$Signaller;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1853
    iget-wide v0, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1854
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    .line 1856
    :cond_0
    iget-wide v0, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1858
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method final isLive()Z
    .locals 1

    .line 1860
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReleasable()Z
    .locals 8

    .line 1843
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1844
    iput-boolean v1, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .line 1845
    :cond_0
    iget-boolean v0, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->interruptible:Z

    if-nez v0, :cond_3

    :cond_1
    iget-wide v2, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->deadline:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v6, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    .line 1848
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iput-wide v2, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final tryFire(I)Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "ignore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 1836
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    move-object v1, v0

    .local v1, "w":Ljava/lang/Thread;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1837
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1838
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1840
    :cond_0
    return-object v2
.end method
