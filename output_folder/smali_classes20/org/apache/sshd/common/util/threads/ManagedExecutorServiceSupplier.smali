.class public interface abstract Lorg/apache/sshd/common/util/threads/ManagedExecutorServiceSupplier;
.super Ljava/lang/Object;
.source "ManagedExecutorServiceSupplier.java"

# interfaces
.implements Lorg/apache/sshd/common/util/threads/ExecutorServiceProvider;


# virtual methods
.method public abstract setExecutorServiceProvider(Ljava/util/function/Supplier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;)V"
        }
    .end annotation
.end method
