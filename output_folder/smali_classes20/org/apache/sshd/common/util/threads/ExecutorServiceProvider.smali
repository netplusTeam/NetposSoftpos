.class public interface abstract Lorg/apache/sshd/common/util/threads/ExecutorServiceProvider;
.super Ljava/lang/Object;
.source "ExecutorServiceProvider.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract getExecutorServiceProvider()Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;"
        }
    .end annotation
.end method

.method public resolveExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 2

    .line 37
    invoke-interface {p0}, Lorg/apache/sshd/common/util/threads/ExecutorServiceProvider;->getExecutorServiceProvider()Ljava/util/function/Supplier;

    move-result-object v0

    .line 38
    .local v0, "provider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Lorg/apache/sshd/common/util/threads/CloseableExecutorService;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    :goto_0
    return-object v1
.end method
