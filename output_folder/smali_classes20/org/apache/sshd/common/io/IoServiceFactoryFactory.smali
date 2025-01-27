.class public interface abstract Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
.super Ljava/lang/Object;
.source "IoServiceFactoryFactory.java"


# virtual methods
.method public abstract create(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/common/io/IoServiceFactory;
.end method

.method public abstract setExecutorServiceFactory(Lorg/apache/sshd/common/Factory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;)V"
        }
    .end annotation
.end method
