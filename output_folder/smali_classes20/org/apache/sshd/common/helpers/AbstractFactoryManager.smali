.class public abstract Lorg/apache/sshd/common/helpers/AbstractFactoryManager;
.super Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;
.source "AbstractFactoryManager.java"

# interfaces
.implements Lorg/apache/sshd/common/FactoryManager;


# instance fields
.field protected agentFactory:Lorg/apache/sshd/agent/SshAgentFactory;

.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected channelFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;"
        }
    .end annotation
.end field

.field protected final channelListenerProxy:Lorg/apache/sshd/common/channel/ChannelListener;

.field protected final channelListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/channel/ChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

.field private eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

.field protected executor:Ljava/util/concurrent/ScheduledExecutorService;

.field protected fileSystemFactory:Lorg/apache/sshd/common/file/FileSystemFactory;

.field protected forwarderFactory:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

.field protected forwardingFilter:Lorg/apache/sshd/server/forward/ForwardingFilter;

.field protected globalRequestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/session/ConnectionService;",
            ">;>;"
        }
    .end annotation
.end field

.field protected ioServiceFactory:Lorg/apache/sshd/common/io/IoServiceFactory;

.field protected ioServiceFactoryFactory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

.field private parentResolver:Lorg/apache/sshd/common/PropertyResolver;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected randomFactory:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/random/Random;",
            ">;"
        }
    .end annotation
.end field

.field private reservedSessionMessagesHandler:Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

.field protected serviceFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/ServiceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private sessionDisconnectHandler:Lorg/apache/sshd/common/session/SessionDisconnectHandler;

.field protected final sessionListenerProxy:Lorg/apache/sshd/common/session/SessionListener;

.field protected final sessionListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/session/SessionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected sessionTimeoutListener:Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;

.field protected shutdownExecutor:Z

.field protected timeoutListenerFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected final tunnelListenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

.field protected final tunnelListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .line 102
    invoke-direct {p0}, Lorg/apache/sshd/common/kex/AbstractKexFactoryManager;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionListeners:Ljava/util/Collection;

    .line 88
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->channelListeners:Ljava/util/Collection;

    .line 90
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->tunnelListeners:Ljava/util/Collection;

    .line 93
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->properties:Ljava/util/Map;

    .line 94
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->attributes:Ljava/util/Map;

    .line 95
    sget-object v3, Lorg/apache/sshd/common/SyspropsMapWrapper;->SYSPROPS_RESOLVER:Lorg/apache/sshd/common/PropertyResolver;

    iput-object v3, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->parentResolver:Lorg/apache/sshd/common/PropertyResolver;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 104
    .local v3, "loader":Ljava/lang/ClassLoader;
    const-class v4, Lorg/apache/sshd/common/session/SessionListener;

    .line 105
    invoke-static {v4, v3, v0}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/SessionListener;

    iput-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionListenerProxy:Lorg/apache/sshd/common/session/SessionListener;

    .line 106
    const-class v0, Lorg/apache/sshd/common/channel/ChannelListener;

    .line 107
    invoke-static {v0, v3, v1}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/ChannelListener;

    iput-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->channelListenerProxy:Lorg/apache/sshd/common/channel/ChannelListener;

    .line 108
    const-class v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 109
    invoke-static {v0, v3, v2}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    iput-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->tunnelListenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 110
    return-void
.end method


# virtual methods
.method public addChannelListener(Lorg/apache/sshd/common/channel/ChannelListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;

    .line 400
    invoke-static {p1}, Lorg/apache/sshd/common/channel/ChannelListener;->validateListener(Lorg/apache/sshd/common/channel/ChannelListener;)Lorg/apache/sshd/common/channel/ChannelListener;

    .line 403
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "addChannelListener({})[{}] ignore registration while session is closing"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 405
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->channelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "addChannelListener({})[{}] registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "addChannelListener({})[{}] ignored duplicate"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    :cond_2
    :goto_0
    return-void
.end method

.method public addPortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 449
    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 452
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "addPortForwardingEventListener({})[{}] ignore registration while session is closing"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 454
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->tunnelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "addPortForwardingEventListener({})[{}] registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "addPortForwardingEventListener({})[{}] ignored duplicate"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    :cond_2
    :goto_0
    return-void
.end method

.method public addSessionListener(Lorg/apache/sshd/common/session/SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;

    .line 355
    invoke-static {p1}, Lorg/apache/sshd/common/session/SessionListener;->validateListener(Lorg/apache/sshd/common/session/SessionListener;)Lorg/apache/sshd/common/session/SessionListener;

    .line 358
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "addSessionListener({})[{}] ignore registration while manager is closing"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "addSessionListener({})[{}] registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "addSessionListener({})[{}] ignored duplicate"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    :cond_2
    :goto_0
    return-void
.end method

.method public attributeKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "*>;>;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method protected checkConfig()V
    .locals 4

    .line 525
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getKeyExchangeFactories()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KeyExchangeFactories not set"

    invoke-static {v0, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 527
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-timer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const/4 v2, 0x1

    .line 528
    invoke-virtual {p0, v0, v2}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;Z)V

    .line 533
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getCipherFactories()Ljava/util/List;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CipherFactories not set"

    invoke-static {v0, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 534
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getCompressionFactories()Ljava/util/List;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CompressionFactories not set"

    invoke-static {v0, v3, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 535
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getMacFactories()Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MacFactories not set"

    invoke-static {v0, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 537
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getRandomFactory()Lorg/apache/sshd/common/Factory;

    move-result-object v0

    const-string v1, "RandomFactory not set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 539
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getIoServiceFactoryFactory()Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 541
    invoke-static {}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->getDefaultIoServiceFactoryFactoryInstance()Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;

    move-result-object v0

    .line 542
    .local v0, "defaultFactory":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setIoServiceFactoryFactory(Lorg/apache/sshd/common/io/IoServiceFactoryFactory;)V

    .line 544
    .end local v0    # "defaultFactory":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    :cond_1
    return-void
.end method

.method public clearAttributes()V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    return-void
.end method

.method public computeAttributeIfAbsent(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;+TT;>;)TT;"
        }
    .end annotation

    .line 175
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    .local p2, "resolver":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;+TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->attributes:Ljava/util/Map;

    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createSessionTimeoutListener()Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;
    .locals 1

    .line 500
    new-instance v0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;

    invoke-direct {v0}, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;-><init>()V

    return-object v0
.end method

.method public getAgentFactory()Lorg/apache/sshd/agent/SshAgentFactory;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->agentFactory:Lorg/apache/sshd/agent/SshAgentFactory;

    return-object v0
.end method

.method public getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 162
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->attributes:Ljava/util/Map;

    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributesCount()I
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getChannelFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->channelFactories:Ljava/util/List;

    return-object v0
.end method

.method public getChannelListenerProxy()Lorg/apache/sshd/common/channel/ChannelListener;
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->channelListenerProxy:Lorg/apache/sshd/common/channel/ChannelListener;

    return-object v0
.end method

.method public getChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    return-object v0
.end method

.method public getFileSystemFactory()Lorg/apache/sshd/common/file/FileSystemFactory;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->fileSystemFactory:Lorg/apache/sshd/common/file/FileSystemFactory;

    return-object v0
.end method

.method public getForwarderFactory()Lorg/apache/sshd/common/forward/ForwardingFilterFactory;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->forwarderFactory:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    return-object v0
.end method

.method public getForwardingFilter()Lorg/apache/sshd/server/forward/ForwardingFilter;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->forwardingFilter:Lorg/apache/sshd/server/forward/ForwardingFilter;

    return-object v0
.end method

.method public getGlobalRequestHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/session/ConnectionService;",
            ">;>;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->globalRequestHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getIoServiceEventListener()Lorg/apache/sshd/common/io/IoServiceEventListener;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

    return-object v0
.end method

.method public getIoServiceFactory()Lorg/apache/sshd/common/io/IoServiceFactory;
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->ioServiceFactoryFactory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->ioServiceFactory:Lorg/apache/sshd/common/io/IoServiceFactory;

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->ioServiceFactoryFactory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    invoke-interface {v1, p0}, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;->create(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/common/io/IoServiceFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->ioServiceFactory:Lorg/apache/sshd/common/io/IoServiceFactory;

    .line 118
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->ioServiceFactory:Lorg/apache/sshd/common/io/IoServiceFactory;

    return-object v0

    .line 118
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getIoServiceFactoryFactory()Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->ioServiceFactoryFactory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    return-object v0
.end method

.method public getNioWorkers()I
    .locals 2

    .line 224
    sget v0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->DEFAULT_NIO_WORKERS:I

    const-string v1, "nio-workers"

    invoke-virtual {p0, v1, v0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, "nb":I
    if-lez v0, :cond_0

    .line 226
    return v0

    .line 228
    :cond_0
    sget v1, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->DEFAULT_NIO_WORKERS:I

    return v1
.end method

.method public getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->parentResolver:Lorg/apache/sshd/common/PropertyResolver;

    return-object v0
.end method

.method public getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->tunnelListenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getRandomFactory()Lorg/apache/sshd/common/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/random/Random;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->randomFactory:Lorg/apache/sshd/common/Factory;

    return-object v0
.end method

.method public getReservedSessionMessagesHandler()Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->reservedSessionMessagesHandler:Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getServiceFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/ServiceFactory;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->serviceFactories:Ljava/util/List;

    return-object v0
.end method

.method public getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionDisconnectHandler:Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    return-object v0
.end method

.method public getSessionListenerProxy()Lorg/apache/sshd/common/session/SessionListener;
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionListenerProxy:Lorg/apache/sshd/common/session/SessionListener;

    return-object v0
.end method

.method public getUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .line 209
    invoke-static {}, Lorg/apache/sshd/common/config/VersionProperties;->getVersionProperties()Ljava/util/NavigableMap;

    move-result-object v0

    .line 208
    const-string v1, "sshd-version"

    const-string v2, "SSHD-UNKNOWN"

    invoke-static {v0, v1, v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getStringProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 189
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->attributes:Ljava/util/Map;

    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeChannelListener(Lorg/apache/sshd/common/channel/ChannelListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;

    .line 421
    if-nez p1, :cond_0

    .line 422
    return-void

    .line 425
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/channel/ChannelListener;->validateListener(Lorg/apache/sshd/common/channel/ChannelListener;)Lorg/apache/sshd/common/channel/ChannelListener;

    .line 426
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->channelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "removeChannelListener({})[{}] removed"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "removeChannelListener({})[{}] not registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    :cond_2
    :goto_0
    return-void
.end method

.method public removePortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 470
    if-nez p1, :cond_0

    .line 471
    return-void

    .line 474
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 475
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->tunnelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "removePortForwardingEventListener({})[{}] removed"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 480
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "removePortForwardingEventListener({})[{}] not registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    :cond_2
    :goto_0
    return-void
.end method

.method public removeSessionListener(Lorg/apache/sshd/common/session/SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/session/SessionListener;

    .line 376
    if-nez p1, :cond_0

    .line 377
    return-void

    .line 380
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/session/SessionListener;->validateListener(Lorg/apache/sshd/common/session/SessionListener;)Lorg/apache/sshd/common/session/SessionListener;

    .line 382
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "removeSessionListener({})[{}] removed"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->log:Lorg/slf4j/Logger;

    const-string v1, "removeSessionListener({})[{}] not registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    :cond_2
    :goto_0
    return-void
.end method

.method protected removeSessionTimeout(Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<",
            "**>;)V"
        }
    .end annotation

    .line 496
    .local p1, "sessionFactory":Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;, "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<**>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->stopSessionTimeoutListener(Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;)V

    .line 497
    return-void
.end method

.method public resolveUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getUnknownChannelReferenceHandler()Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    move-result-object v0

    return-object v0
.end method

.method public setAgentFactory(Lorg/apache/sshd/agent/SshAgentFactory;)V
    .locals 0
    .param p1, "agentFactory"    # Lorg/apache/sshd/agent/SshAgentFactory;

    .line 246
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->agentFactory:Lorg/apache/sshd/agent/SshAgentFactory;

    .line 247
    return-void
.end method

.method public setAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 181
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->attributes:Ljava/util/Map;

    .line 182
    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 183
    const-string v2, "No value"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setChannelFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "channelFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/ChannelFactory;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->channelFactories:Ljava/util/List;

    .line 221
    return-void
.end method

.method public setChannelStreamPacketWriterResolver(Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    .line 335
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    .line 336
    return-void
.end method

.method public setFileSystemFactory(Lorg/apache/sshd/common/file/FileSystemFactory;)V
    .locals 0
    .param p1, "fileSystemFactory"    # Lorg/apache/sshd/common/file/FileSystemFactory;

    .line 287
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->fileSystemFactory:Lorg/apache/sshd/common/file/FileSystemFactory;

    .line 288
    return-void
.end method

.method public setForwarderFactory(Lorg/apache/sshd/common/forward/ForwardingFilterFactory;)V
    .locals 0
    .param p1, "forwarderFactory"    # Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    .line 269
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->forwarderFactory:Lorg/apache/sshd/common/forward/ForwardingFilterFactory;

    .line 270
    return-void
.end method

.method public setForwardingFilter(Lorg/apache/sshd/server/forward/ForwardingFilter;)V
    .locals 0
    .param p1, "forwardingFilter"    # Lorg/apache/sshd/server/forward/ForwardingFilter;

    .line 278
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->forwardingFilter:Lorg/apache/sshd/server/forward/ForwardingFilter;

    .line 279
    return-void
.end method

.method public setGlobalRequestHandlers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/session/ConnectionService;",
            ">;>;)V"
        }
    .end annotation

    .line 305
    .local p1, "globalRequestHandlers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/session/ConnectionService;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->globalRequestHandlers:Ljava/util/List;

    .line 306
    return-void
.end method

.method public setIoServiceEventListener(Lorg/apache/sshd/common/io/IoServiceEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/io/IoServiceEventListener;

    .line 137
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

    .line 138
    return-void
.end method

.method public setIoServiceFactoryFactory(Lorg/apache/sshd/common/io/IoServiceFactoryFactory;)V
    .locals 0
    .param p1, "ioServiceFactory"    # Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    .line 127
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->ioServiceFactoryFactory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    .line 128
    return-void
.end method

.method public setNioWorkers(I)V
    .locals 2
    .param p1, "nioWorkers"    # I

    .line 233
    const-string v0, "nio-workers"

    if-lez p1, :cond_0

    .line 234
    invoke-static {p0, v0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_0

    .line 236
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :goto_0
    return-void
.end method

.method public setParentPropertyResolver(Lorg/apache/sshd/common/PropertyResolver;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 203
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->parentResolver:Lorg/apache/sshd/common/PropertyResolver;

    .line 204
    return-void
.end method

.method public setRandomFactory(Lorg/apache/sshd/common/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/random/Random;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "randomFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/random/Random;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->randomFactory:Lorg/apache/sshd/common/Factory;

    .line 147
    return-void
.end method

.method public setReservedSessionMessagesHandler(Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    .line 315
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->reservedSessionMessagesHandler:Lorg/apache/sshd/common/session/ReservedSessionMessagesHandler;

    .line 316
    return-void
.end method

.method public setScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->setScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;Z)V

    .line 256
    return-void
.end method

.method public setScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "shutdownExecutor"    # Z

    .line 259
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 260
    iput-boolean p2, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->shutdownExecutor:Z

    .line 261
    return-void
.end method

.method public setServiceFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/ServiceFactory;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "serviceFactories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/ServiceFactory;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->serviceFactories:Ljava/util/List;

    .line 297
    return-void
.end method

.method public setSessionDisconnectHandler(Lorg/apache/sshd/common/session/SessionDisconnectHandler;)V
    .locals 0
    .param p1, "sessionDisconnectHandler"    # Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    .line 325
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionDisconnectHandler:Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    .line 326
    return-void
.end method

.method public setUnknownChannelReferenceHandler(Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;)V
    .locals 0
    .param p1, "unknownChannelReferenceHandler"    # Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    .line 345
    iput-object p1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->unknownChannelReferenceHandler:Lorg/apache/sshd/common/session/UnknownChannelReferenceHandler;

    .line 346
    return-void
.end method

.method protected setupSessionTimeout(Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<",
            "**>;)V"
        }
    .end annotation

    .line 488
    .local p1, "sessionFactory":Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;, "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<**>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->createSessionTimeoutListener()Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionTimeoutListener:Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;

    .line 489
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->addSessionListener(Lorg/apache/sshd/common/session/SessionListener;)V

    .line 491
    invoke-virtual {p0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionTimeoutListener:Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 492
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->timeoutListenerFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 493
    return-void
.end method

.method protected stopSessionTimeoutListener(Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<",
            "**>;)V"
        }
    .end annotation

    .line 505
    .local p1, "sessionFactory":Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;, "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<**>;"
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->timeoutListenerFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 507
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    iput-object v1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->timeoutListenerFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 510
    goto :goto_0

    .line 509
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->timeoutListenerFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 510
    throw v0

    .line 515
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionTimeoutListener:Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;

    if-eqz v0, :cond_1

    .line 517
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->removeSessionListener(Lorg/apache/sshd/common/session/SessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 519
    iput-object v1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionTimeoutListener:Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;

    .line 520
    goto :goto_1

    .line 519
    :catchall_1
    move-exception v0

    iput-object v1, p0, Lorg/apache/sshd/common/helpers/AbstractFactoryManager;->sessionTimeoutListener:Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;

    .line 520
    throw v0

    .line 522
    :cond_1
    :goto_1
    return-void
.end method
