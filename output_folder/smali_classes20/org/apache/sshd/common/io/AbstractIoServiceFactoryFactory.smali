.class public abstract Lorg/apache/sshd/common/io/AbstractIoServiceFactoryFactory;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractIoServiceFactoryFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoServiceFactoryFactory;


# instance fields
.field private executorServiceFactory:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p1, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/util/threads/CloseableExecutorService;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactoryFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    .line 41
    return-void
.end method


# virtual methods
.method public getExecutorServiceFactory()Lorg/apache/sshd/common/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactoryFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    return-object v0
.end method

.method protected newExecutor()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactoryFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setExecutorServiceFactory(Lorg/apache/sshd/common/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/util/threads/CloseableExecutorService;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactoryFactory;->executorServiceFactory:Lorg/apache/sshd/common/Factory;

    .line 50
    return-void
.end method
