.class public interface abstract Lorg/apache/sshd/common/future/VerifiableFuture;
.super Ljava/lang/Object;
.source "VerifiableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public verify()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/apache/sshd/common/future/VerifiableFuture;, "Lorg/apache/sshd/common/future/VerifiableFuture<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p0, v0, v1}, Lorg/apache/sshd/common/future/VerifiableFuture;->verify(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract verify(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public verify(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/sshd/common/future/VerifiableFuture;, "Lorg/apache/sshd/common/future/VerifiableFuture<TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/apache/sshd/common/future/VerifiableFuture;->verify(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
