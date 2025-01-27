.class public interface abstract Lorg/apache/sshd/common/future/WaitableFuture;
.super Ljava/lang/Object;
.source "WaitableFuture.java"


# virtual methods
.method public await()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p0, v0, v1}, Lorg/apache/sshd/common/future/WaitableFuture;->await(J)Z

    move-result v0

    return v0
.end method

.method public abstract await(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/apache/sshd/common/future/WaitableFuture;->await(J)Z

    move-result v0

    return v0
.end method

.method public awaitUninterruptibly()Z
    .locals 2

    .line 87
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p0, v0, v1}, Lorg/apache/sshd/common/future/WaitableFuture;->awaitUninterruptibly(J)Z

    move-result v0

    return v0
.end method

.method public abstract awaitUninterruptibly(J)Z
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 100
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/apache/sshd/common/future/WaitableFuture;->awaitUninterruptibly(J)Z

    move-result v0

    return v0
.end method

.method public abstract getId()Ljava/lang/Object;
.end method

.method public abstract isDone()Z
.end method
