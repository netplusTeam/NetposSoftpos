.class public Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactoryFactory;
.super Lorg/apache/sshd/common/io/AbstractIoServiceFactoryFactory;
.source "Nio2ServiceFactoryFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactoryFactory;-><init>(Lorg/apache/sshd/common/Factory;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "executors":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/util/threads/CloseableExecutorService;>;"
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/io/AbstractIoServiceFactoryFactory;-><init>(Lorg/apache/sshd/common/Factory;)V

    .line 46
    const-class v0, Ljava/nio/channels/AsynchronousChannel;

    const-string v1, "Missing NIO2 class"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/common/io/IoServiceFactory;
    .locals 2
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;

    .line 51
    new-instance v0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;

    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactoryFactory;->newExecutor()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;-><init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    return-object v0
.end method
