.class public abstract Lorg/apache/sshd/common/channel/AbstractChannel;
.super Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;
.source "AbstractChannel.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/Channel;
.implements Lorg/apache/sshd/common/util/threads/ExecutorServiceCarrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;,
        Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;
    }
.end annotation


# static fields
.field public static final RESPONSE_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;


# instance fields
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

.field protected final eofReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final eofSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

.field protected final gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

.field protected gracefulState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field protected final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final localWindow:Lorg/apache/sshd/common/channel/Window;

.field private final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

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

.field private recipient:I

.field private final remoteWindow:Lorg/apache/sshd/common/channel/Window;

.field private final requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field protected service:Lorg/apache/sshd/common/session/ConnectionService;

.field private sessionInstance:Lorg/apache/sshd/common/session/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/sshd/common/util/Int2IntFunction;->add(I)Ljava/util/function/IntUnaryOperator;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/channel/AbstractChannel;->RESPONSE_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "discriminator"    # Ljava/lang/String;
    .param p2, "client"    # Z

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/sshd/common/channel/AbstractChannel;-><init>(Ljava/lang/String;ZLjava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 124
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLjava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 5
    .param p1, "discriminator"    # Ljava/lang/String;
    .param p2, "client"    # Z
    .param p4, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ")V"
        }
    .end annotation

    .line 129
    .local p3, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;>;"
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->eofReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->eofSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->Opened:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->channelListeners:Ljava/util/Collection;

    .line 96
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->id:I

    .line 97
    iput v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->recipient:I

    .line 100
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->requestHandlers:Ljava/util/List;

    .line 110
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->pendingRequests:Ljava/util/Map;

    .line 111
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->properties:Ljava/util/Map;

    .line 112
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->attributes:Ljava/util/Map;

    .line 130
    new-instance v2, Lorg/apache/sshd/common/future/DefaultCloseFuture;

    iget-object v3, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->futureLock:Ljava/lang/Object;

    invoke-direct {v2, p1, v3}, Lorg/apache/sshd/common/future/DefaultCloseFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    .line 131
    new-instance v2, Lorg/apache/sshd/common/channel/Window;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, p2, v4}, Lorg/apache/sshd/common/channel/Window;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/Object;ZZ)V

    iput-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->localWindow:Lorg/apache/sshd/common/channel/Window;

    .line 132
    new-instance v2, Lorg/apache/sshd/common/channel/Window;

    invoke-direct {v2, p0, v3, p2, v1}, Lorg/apache/sshd/common/channel/Window;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/Object;ZZ)V

    iput-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->remoteWindow:Lorg/apache/sshd/common/channel/Window;

    .line 133
    const-class v1, Lorg/apache/sshd/common/channel/ChannelListener;

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 133
    invoke-static {v1, v2, v0}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/ChannelListener;

    iput-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->channelListenerProxy:Lorg/apache/sshd/common/channel/ChannelListener;

    .line 135
    iput-object p4, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 136
    invoke-virtual {p0, p3}, Lorg/apache/sshd/common/channel/AbstractChannel;->addRequestHandlers(Ljava/util/Collection;)V

    .line 137
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z

    .line 115
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;-><init>(Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method protected constructor <init>(ZLjava/util/Collection;)V
    .locals 2
    .param p1, "client"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;)V"
        }
    .end annotation

    .line 119
    .local p2, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;>;"
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/sshd/common/channel/AbstractChannel;-><init>(Ljava/lang/String;ZLjava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 120
    return-void
.end method


# virtual methods
.method public addChannelListener(Lorg/apache/sshd/common/channel/ChannelListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;

    .line 500
    invoke-static {p1}, Lorg/apache/sshd/common/channel/ChannelListener;->validateListener(Lorg/apache/sshd/common/channel/ChannelListener;)Lorg/apache/sshd/common/channel/ChannelListener;

    .line 502
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "addChannelListener({})[{}] ignore registration while channel is closing"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->channelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "addChannelListener({})[{}] registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "addChannelListener({})[{}] ignored duplicate"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 516
    :cond_2
    :goto_0
    return-void
.end method

.method protected addPendingRequest(Ljava/lang/String;Z)Ljava/util/Date;
    .locals 6
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "wantReply"    # Z

    .line 228
    if-nez p2, :cond_0

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 233
    .local v0, "pending":Ljava/util/Date;
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 234
    .local v1, "prev":Ljava/util/Date;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const-string v5, "Multiple pending requests of type=%s"

    invoke-static {v4, v5, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 235
    iget-object v4, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    iget-object v4, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v2

    const/4 v2, 0x2

    aput-object v0, v5, v2

    const-string v2, "addPendingRequest({}) request={}, pending={}"

    invoke-interface {v4, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :cond_2
    return-object v0
.end method

.method public addRequestHandler(Lorg/apache/sshd/common/channel/RequestHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->requestHandlers:Ljava/util/List;

    const-string v1, "No handler instance"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
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

    .line 971
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method public clearAttributes()V
    .locals 1

    .line 998
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 999
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

    .line 979
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    .local p2, "resolver":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;+TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->attributes:Ljava/util/Map;

    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected configureWindow()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->localWindow:Lorg/apache/sshd/common/channel/Window;

    invoke-virtual {v0, p0}, Lorg/apache/sshd/common/channel/Window;->init(Lorg/apache/sshd/common/PropertyResolver;)V

    .line 1003
    return-void
.end method

.method protected abstract doWriteData([BIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doWriteExtendedData([BIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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

    .line 966
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->attributes:Ljava/util/Map;

    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributesCount()I
    .locals 1

    .line 960
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getChannelListenerProxy()Lorg/apache/sshd/common/channel/ChannelListener;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->channelListenerProxy:Lorg/apache/sshd/common/channel/ChannelListener;

    return-object v0
.end method

.method public getChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    return-object v0
.end method

.method public getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 156
    iget v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->id:I

    return v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 4

    .line 563
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/sshd/common/Closeable;

    new-instance v2, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;

    invoke-direct {v2, p0}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 564
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->sequential([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 565
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda4;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 571
    .local v0, "closer":Lorg/apache/sshd/common/Closeable;
    new-instance v1, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda5;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;)V

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/Closeable;->addCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V

    .line 572
    return-object v0
.end method

.method public getLocalWindow()Lorg/apache/sshd/common/channel/Window;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->localWindow:Lorg/apache/sshd/common/channel/Window;

    return-object v0
.end method

.method public getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

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

    .line 955
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getRecipient()I
    .locals 1

    .line 161
    iget v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->recipient:I

    return v0
.end method

.method public getRemoteWindow()Lorg/apache/sshd/common/channel/Window;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->remoteWindow:Lorg/apache/sshd/common/channel/Window;

    return-object v0
.end method

.method public getRequestHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->requestHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->sessionInstance:Lorg/apache/sshd/common/session/Session;

    return-object v0
.end method

.method protected handleChannelRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 19
    .param p1, "req"    # Ljava/lang/String;
    .param p2, "wantReply"    # Z
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    .line 265
    .local v5, "debugEnabled":Z
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v5, :cond_0

    .line 266
    iget-object v0, v1, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v1, v10, v8

    aput-object v2, v10, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v6

    const-string v11, "handleChannelRequest({}) SSH_MSG_CHANNEL_REQUEST {} wantReply={}"

    invoke-interface {v0, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getRequestHandlers()Ljava/util/List;

    move-result-object v10

    .line 270
    .local v10, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;>;"
    iget-object v0, v1, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v11

    .line 271
    .local v11, "traceEnabled":Z
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/apache/sshd/common/channel/RequestHandler;

    .line 274
    .local v13, "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;"
    :try_start_0
    invoke-interface {v13, v1, v2, v3, v4}, Lorg/apache/sshd/common/channel/RequestHandler;->process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .local v0, "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    goto :goto_1

    .line 275
    .end local v0    # "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 276
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v14, v1, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v1, v15, v8

    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v7

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v6

    aput-object v2, v15, v9

    .line 278
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v17, 0x4

    aput-object v18, v15, v17

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x5

    aput-object v18, v15, v16

    .line 276
    const-string v9, "handleRequest({}) {} while {}#process({})[want-reply={}]: {}"

    invoke-interface {v14, v9, v15}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    if-eqz v5, :cond_1

    .line 280
    iget-object v9, v1, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleRequest("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") request="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "[want-reply="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] processing failure details"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v14, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    :cond_1
    sget-object v9, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-object v0, v9

    .line 288
    .local v0, "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :goto_1
    sget-object v9, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v9, v0}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 289
    if-eqz v11, :cond_2

    .line 290
    iget-object v9, v1, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v1, v14, v8

    .line 291
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    aput-object v2, v14, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const/4 v15, 0x4

    aput-object v0, v14, v15

    .line 290
    const-string v15, "handleRequest({})[{}#process({})[want-reply={}]]: {}"

    invoke-interface {v9, v15, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 289
    :cond_2
    const/16 v16, 0x3

    .line 297
    .end local v0    # "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .end local v13    # "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;"
    :goto_2
    move/from16 v9, v16

    goto/16 :goto_0

    .line 294
    .restart local v0    # "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .restart local v13    # "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;"
    :cond_3
    invoke-virtual {v1, v4, v2, v0, v3}, Lorg/apache/sshd/common/channel/AbstractChannel;->sendResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 295
    return-void

    .line 300
    .end local v0    # "result":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .end local v13    # "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;"
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lorg/apache/sshd/common/channel/AbstractChannel;->handleUnknownChannelRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 301
    return-void
.end method

.method public handleClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 544
    .local v0, "debugEnabled":Z
    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v2, "handleClose({}) SSH_MSG_CHANNEL_CLOSE"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->isEofSent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 549
    if-eqz v0, :cond_1

    .line 550
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v2, "handleClose({}) prevent sending EOF"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->Opened:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    sget-object v3, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->CloseReceived:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    invoke-static {v1, v2, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 555
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/channel/AbstractChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    goto :goto_0

    .line 556
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->CloseSent:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    sget-object v3, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;->Closed:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulState;

    invoke-static {v1, v2, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 557
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v1}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->setClosed()V

    .line 559
    :cond_3
    :goto_0
    return-void
.end method

.method public handleData(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 11
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v0

    const/16 v2, 0x5e

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/sshd/common/channel/AbstractChannel;->validateIncomingDataSize(IJ)J

    move-result-wide v0

    .line 801
    .local v0, "len":J
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "handleData({}) SSH_MSG_CHANNEL_DATA len={}"

    invoke-interface {v2, v4, p0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 804
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 805
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSimplifiedLogger()Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    move-result-object v3

    sget-object v4, Lorg/apache/sshd/common/util/buffer/BufferUtils;->DEFAULT_HEXDUMP_LEVEL:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleData("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x20

    .line 806
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v9

    long-to-int v10, v0

    .line 805
    move-object v6, p0

    invoke-static/range {v3 .. v10}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;C[BII)V

    .line 808
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->isEofSignalled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 810
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "handleData({}) extra {} bytes sent after EOF"

    invoke-interface {v2, v4, p0, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 812
    :cond_2
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/apache/sshd/common/channel/AbstractChannel;->doWriteData([BIJ)V

    .line 813
    return-void
.end method

.method public handleEof()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->eofReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "handleEof({}) already signalled"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 881
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "handleEof({}) SSH_MSG_CHANNEL_EOF"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 885
    :cond_1
    :goto_0
    const-string v0, "SSH_MSG_CHANNEL_EOF"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/AbstractChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public handleExtendedData(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 12
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    .line 819
    .local v0, "ex":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 820
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "handleExtendedData({}) SSH_MSG_CHANNEL_FAILURE - non STDERR type: {}"

    invoke-interface {v1, v3, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 823
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 824
    .local v1, "s":Lorg/apache/sshd/common/session/Session;
    const/16 v2, 0x64

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 825
    .local v2, "rsp":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getRecipient()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 826
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/channel/AbstractChannel;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 827
    return-void

    .line 830
    .end local v1    # "s":Lorg/apache/sshd/common/session/Session;
    .end local v2    # "rsp":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    const/16 v1, 0x5f

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/sshd/common/channel/AbstractChannel;->validateIncomingDataSize(IJ)J

    move-result-wide v1

    .line 831
    .local v1, "len":J
    iget-object v3, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 832
    iget-object v3, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "handleExtendedData({}) SSH_MSG_CHANNEL_EXTENDED_DATA len={}"

    invoke-interface {v3, v5, p0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 834
    :cond_2
    iget-object v3, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 835
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSimplifiedLogger()Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    move-result-object v4

    sget-object v5, Lorg/apache/sshd/common/util/buffer/BufferUtils;->DEFAULT_HEXDUMP_LEVEL:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleExtendedData("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x20

    .line 836
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v10

    long-to-int v11, v1

    .line 835
    move-object v7, p0

    invoke-static/range {v4 .. v11}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;C[BII)V

    .line 838
    :cond_3
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->isEofSignalled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 840
    iget-object v3, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "handleExtendedData({}) extra {} bytes sent after EOF"

    invoke-interface {v3, v5, p0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 842
    :cond_4
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v4

    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/apache/sshd/common/channel/AbstractChannel;->doWriteExtendedData([BIJ)V

    .line 843
    return-void
.end method

.method public handleFailure()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "handleFailure({}) SSH_MSG_CHANNEL_FAILURE"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 918
    :cond_0
    return-void
.end method

.method protected handleInternalRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 4
    .param p1, "req"    # Ljava/lang/String;
    .param p2, "wantReply"    # Z
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string v2, "handleInternalRequest({})[want-reply={}] unknown type: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0
.end method

.method public handleRequest(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;->handleChannelRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 261
    return-void
.end method

.method public handleSuccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "handleFhandleSuccessailure({}) SSH_MSG_CHANNEL_SUCCESS"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 910
    :cond_0
    return-void
.end method

.method protected handleUnknownChannelRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 5
    .param p1, "req"    # Ljava/lang/String;
    .param p2, "wantReply"    # Z
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/common/channel/AbstractChannel;->handleInternalRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    .line 315
    .local v0, "r":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0, p3, p1, v0, p2}, Lorg/apache/sshd/common/channel/AbstractChannel;->sendResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;

    goto :goto_1

    .line 316
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "handleUnknownChannelRequest({}) Unknown channel request: {}[want-reply={}]"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {p0, p3, p1, v1, p2}, Lorg/apache/sshd/common/channel/AbstractChannel;->sendResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 321
    :goto_1
    return-void
.end method

.method public handleWindowAdjust(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    .line 896
    .local v0, "window":I
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "handleWindowAdjust({}) SSH_MSG_CHANNEL_WINDOW_ADJUST window={}"

    invoke-interface {v1, v3, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 900
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v1

    .line 901
    .local v1, "wRemote":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/channel/Window;->expand(I)V

    .line 902
    const-string v2, "SSH_MSG_CHANNEL_WINDOW_ADJUST"

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/channel/AbstractChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 903
    return-void
.end method

.method public init(Lorg/apache/sshd/common/session/ConnectionService;Lorg/apache/sshd/common/session/Session;I)V
    .locals 5
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "init() service={} session={} id={}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_0
    iput-object p1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->service:Lorg/apache/sshd/common/session/ConnectionService;

    .line 373
    iput-object p2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->sessionInstance:Lorg/apache/sshd/common/session/Session;

    .line 374
    iput p3, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->id:I

    .line 376
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->signalChannelInitialized()V

    .line 377
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->configureWindow()V

    .line 378
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 379
    return-void
.end method

.method protected invokeChannelSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/Invoker<",
            "Lorg/apache/sshd/common/channel/ChannelListener;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 756
    .local p1, "invoker":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<Lorg/apache/sshd/common/channel/ChannelListener;Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 757
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v2

    .line 758
    .local v2, "manager":Lorg/apache/sshd/common/FactoryManager;
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/sshd/common/channel/ChannelListener;

    if-nez v2, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 759
    :cond_1
    invoke-interface {v2}, Lorg/apache/sshd/common/FactoryManager;->getChannelListenerProxy()Lorg/apache/sshd/common/channel/ChannelListener;

    move-result-object v4

    :goto_1
    const/4 v5, 0x0

    aput-object v4, v3, v5

    if-nez v0, :cond_2

    goto :goto_2

    .line 760
    :cond_2
    invoke-interface {v0}, Lorg/apache/sshd/common/session/Session;->getChannelListenerProxy()Lorg/apache/sshd/common/channel/ChannelListener;

    move-result-object v1

    :goto_2
    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    .line 761
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getChannelListenerProxy()Lorg/apache/sshd/common/channel/ChannelListener;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, v3

    .line 764
    .local v1, "listeners":[Lorg/apache/sshd/common/channel/ChannelListener;
    const/4 v3, 0x0

    .line 765
    .local v3, "err":Ljava/lang/Throwable;
    array-length v4, v1

    :goto_3
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 766
    .local v6, "l":Lorg/apache/sshd/common/channel/ChannelListener;
    if-nez v6, :cond_3

    .line 767
    goto :goto_4

    .line 770
    :cond_3
    :try_start_0
    invoke-interface {p1, v6}, Lorg/apache/sshd/common/util/Invoker;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    goto :goto_4

    .line 771
    :catchall_0
    move-exception v7

    .line 772
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v3, v7}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 765
    .end local v6    # "l":Lorg/apache/sshd/common/channel/ChannelListener;
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 776
    :cond_4
    if-nez v3, :cond_5

    .line 779
    return-void

    .line 777
    :cond_5
    throw v3
.end method

.method public isEofSent()Z
    .locals 1

    .line 950
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->eofSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isEofSignalled()Z
    .locals 1

    .line 890
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->eofReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getInnerCloseable$4$org-apache-sshd-common-channel-AbstractChannel()V
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->service:Lorg/apache/sshd/common/session/ConnectionService;

    if-eqz v0, :cond_0

    .line 567
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/session/ConnectionService;->unregisterChannel(Lorg/apache/sshd/common/channel/Channel;)V

    .line 569
    :cond_0
    return-void
.end method

.method synthetic lambda$getInnerCloseable$5$org-apache-sshd-common-channel-AbstractChannel(Lorg/apache/sshd/common/future/CloseFuture;)V
    .locals 0
    .param p1, "future"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 571
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->clearAttributes()V

    return-void
.end method

.method synthetic lambda$notifyStateChanged$3$org-apache-sshd-common-channel-AbstractChannel(Ljava/lang/String;Lorg/apache/sshd/common/channel/ChannelListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "l"    # Lorg/apache/sshd/common/channel/ChannelListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p2, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;->notifyStateChanged(Lorg/apache/sshd/common/channel/ChannelListener;Ljava/lang/String;)V

    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalChannelClosed$6$org-apache-sshd-common-channel-AbstractChannel(Ljava/lang/Throwable;Lorg/apache/sshd/common/channel/ChannelListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "reason"    # Ljava/lang/Throwable;
    .param p2, "l"    # Lorg/apache/sshd/common/channel/ChannelListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 727
    invoke-virtual {p0, p2, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;->signalChannelClosed(Lorg/apache/sshd/common/channel/ChannelListener;Ljava/lang/Throwable;)V

    .line 728
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalChannelInitialized$0$org-apache-sshd-common-channel-AbstractChannel(Lorg/apache/sshd/common/channel/ChannelListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "l"    # Lorg/apache/sshd/common/channel/ChannelListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 384
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;->signalChannelInitialized(Lorg/apache/sshd/common/channel/ChannelListener;)V

    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalChannelOpenFailure$2$org-apache-sshd-common-channel-AbstractChannel(Ljava/lang/Throwable;Lorg/apache/sshd/common/channel/ChannelListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "reason"    # Ljava/lang/Throwable;
    .param p2, "l"    # Lorg/apache/sshd/common/channel/ChannelListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 440
    invoke-virtual {p0, p2, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;->signalChannelOpenFailure(Lorg/apache/sshd/common/channel/ChannelListener;Ljava/lang/Throwable;)V

    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalChannelOpenSuccess$1$org-apache-sshd-common-channel-AbstractChannel(Lorg/apache/sshd/common/channel/ChannelListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "l"    # Lorg/apache/sshd/common/channel/ChannelListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 410
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;->signalChannelOpenSuccess(Lorg/apache/sshd/common/channel/ChannelListener;)V

    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyStateChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "hint"    # Ljava/lang/String;

    .line 472
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/AbstractChannel;->invokeChannelSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 484
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->futureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->futureLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 486
    monitor-exit v0

    .line 487
    :goto_0
    goto :goto_1

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 476
    :catchall_1
    move-exception v0

    .line 477
    .local v0, "err":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 478
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v3, "notifyStateChanged({})[{}] {} while signal channel state change: {}"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    .line 479
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 478
    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] channel state signalling failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 484
    .end local v0    # "err":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->futureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->futureLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 486
    monitor-exit v0

    goto :goto_0

    .line 488
    :goto_1
    return-void

    .line 486
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 484
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->futureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_4
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->futureLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 486
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 487
    throw v0

    .line 486
    :catchall_4
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method

.method protected notifyStateChanged(Lorg/apache/sshd/common/channel/ChannelListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;
    .param p2, "hint"    # Ljava/lang/String;

    .line 491
    if-nez p1, :cond_0

    .line 492
    return-void

    .line 495
    :cond_0
    invoke-interface {p1, p0, p2}, Lorg/apache/sshd/common/channel/ChannelListener;->channelStateChanged(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method protected preClose()V
    .locals 9

    .line 694
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->isEofSent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "close({}) prevent sending EOF"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 699
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/AbstractChannel;->signalChannelClosed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->channelListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 703
    nop

    .line 705
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Closeable;

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly([Ljava/io/Closeable;)Ljava/io/IOException;

    move-result-object v0

    .line 706
    .local v0, "err":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 707
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    const-string v3, ": "

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to pre-close window(s) of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 711
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 712
    invoke-virtual {v0}, Ljava/io/IOException;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v1

    .line 713
    .local v1, "suppressed":[Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    .line 714
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v1, v2

    .line 715
    .local v5, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suppressed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") while pre-close window(s) of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 714
    .end local v5    # "t":Ljava/lang/Throwable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    .end local v1    # "suppressed":[Ljava/lang/Throwable;
    :cond_2
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;->preClose()V

    .line 722
    return-void

    .line 702
    .end local v0    # "err":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->channelListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 703
    throw v0
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

    .line 993
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->attributes:Ljava/util/Map;

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

    .line 520
    if-nez p1, :cond_0

    .line 521
    return-void

    .line 524
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/channel/ChannelListener;->validateListener(Lorg/apache/sshd/common/channel/ChannelListener;)Lorg/apache/sshd/common/channel/ChannelListener;

    .line 525
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->channelListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "removeChannelListener({})[{}] removed"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "removeChannelListener({})[{}] not registered"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    :cond_2
    :goto_0
    return-void
.end method

.method protected removePendingRequest(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "request"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 252
    .local v0, "pending":Ljava/util/Date;
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v3, "removePendingRequest({}) request={}, pending={}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_0
    return-object v0
.end method

.method public removeRequestHandler(Lorg/apache/sshd/common/channel/RequestHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "handler":Lorg/apache/sshd/common/channel/RequestHandler;, "Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->requestHandlers:Ljava/util/List;

    const-string v1, "No handler instance"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public resolveChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    .locals 3

    .line 208
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    move-result-object v0

    .line 209
    .local v0, "resolver":Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    if-eqz v0, :cond_0

    .line 210
    return-object v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 214
    .local v1, "manager":Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;
    invoke-interface {v1}, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;->resolveChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    move-result-object v2

    return-object v2
.end method

.method protected sendEof()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "sendEof({}) already closing or closed"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 929
    :cond_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->eofSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "sendEof({}) already sent"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 936
    :cond_2
    return-void

    .line 939
    :cond_3
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 940
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "sendEof({}) SSH_MSG_CHANNEL_EOF"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 943
    :cond_4
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 944
    .local v0, "s":Lorg/apache/sshd/common/session/Session;
    const/16 v1, 0x60

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 945
    .local v1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getRecipient()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 946
    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/channel/AbstractChannel;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 947
    return-void
.end method

.method protected sendResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "req"    # Ljava/lang/String;
    .param p3, "result"    # Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .param p4, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "sendResponse({}) request={} result={}, want-reply={}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v0, p3}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p4, :cond_1

    goto :goto_1

    .line 358
    :cond_1
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v0, p3}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x63

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    .line 361
    .local v0, "cmd":B
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v2

    .line 362
    .local v2, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v2, v0, v1}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 363
    .local v1, "rsp":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget v3, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->recipient:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 364
    invoke-interface {v2, v1}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v3

    return-object v3

    .line 351
    .end local v0    # "cmd":B
    .end local v1    # "rsp":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v2    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_3
    :goto_1
    new-instance v0, Lorg/apache/sshd/common/channel/AbstractChannel$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/apache/sshd/common/channel/AbstractChannel$1;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected sendWindowAdjust(J)V
    .locals 4
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sendWindowAdjust({}) SSH_MSG_CHANNEL_WINDOW_ADJUST len={}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 1010
    .local v0, "s":Lorg/apache/sshd/common/session/Session;
    const/16 v1, 0x5d

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 1011
    .local v1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getRecipient()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 1012
    invoke-virtual {v1, p1, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 1013
    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/channel/AbstractChannel;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 1014
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

    .line 985
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->attributes:Ljava/util/Map;

    .line 986
    const-string v1, "No key"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 987
    const-string v2, "No value"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 985
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setChannelStreamPacketWriterResolver(Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    .line 203
    iput-object p1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->channelStreamPacketWriterResolver:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    .line 204
    return-void
.end method

.method protected setRecipient(I)V
    .locals 3
    .param p1, "recipient"    # I

    .line 165
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "setRecipient({}) recipient={}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    :cond_0
    iput p1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->recipient:I

    .line 169
    return-void
.end method

.method public signalChannelClosed(Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 726
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda3;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/AbstractChannel;->invokeChannelSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    goto/16 :goto_1

    .line 730
    :catchall_0
    move-exception v0

    .line 731
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 732
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v5, "signalChannelClosed({}) {} while signal channel closed: {}"

    invoke-interface {v2, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    const-string v3, "signalChannelClosed("

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") channel closed signalling failure details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 736
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 737
    invoke-virtual {v1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v2

    .line 738
    .local v2, "suppressed":[Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    .line 739
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 740
    .local v6, "s":Ljava/lang/Throwable;
    iget-object v7, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") suppressed closed channel signalling failure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 739
    .end local v6    # "s":Ljava/lang/Throwable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "err":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "suppressed":[Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method

.method protected signalChannelClosed(Lorg/apache/sshd/common/channel/ChannelListener;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 748
    if-nez p1, :cond_0

    .line 749
    return-void

    .line 752
    :cond_0
    invoke-interface {p1, p0, p2}, Lorg/apache/sshd/common/channel/ChannelListener;->channelClosed(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/Throwable;)V

    .line 753
    return-void
.end method

.method protected signalChannelInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda6;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/AbstractChannel;->invokeChannelSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    nop

    .line 397
    return-void

    .line 387
    :catchall_0
    move-exception v0

    .line 388
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 389
    .local v1, "e":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_1

    .line 391
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 392
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 394
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to notify channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " initialization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 390
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method protected signalChannelInitialized(Lorg/apache/sshd/common/channel/ChannelListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;

    .line 400
    if-nez p1, :cond_0

    .line 401
    return-void

    .line 404
    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/channel/ChannelListener;->channelInitialized(Lorg/apache/sshd/common/channel/Channel;)V

    .line 405
    return-void
.end method

.method protected signalChannelOpenFailure(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 439
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/AbstractChannel;->invokeChannelSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    goto/16 :goto_1

    .line 443
    :catchall_0
    move-exception v0

    .line 444
    .local v0, "err":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 445
    .local v1, "ignored":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 446
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 445
    const-string v5, "signalChannelOpenFailure({}) failed ({}) to inform listener of open failure={}: {}"

    invoke-interface {v2, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInit("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") inform listener open failure details"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    invoke-virtual {v1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v2

    .line 453
    .local v2, "suppressed":[Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    .line 454
    array-length v3, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 455
    .local v5, "s":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "signalChannelOpenFailure("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") suppressed channel open failure signalling"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    .end local v5    # "s":Ljava/lang/Throwable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 460
    .end local v0    # "err":Ljava/lang/Throwable;
    .end local v1    # "ignored":Ljava/lang/Throwable;
    .end local v2    # "suppressed":[Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method

.method protected signalChannelOpenFailure(Lorg/apache/sshd/common/channel/ChannelListener;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 463
    if-nez p1, :cond_0

    .line 464
    return-void

    .line 467
    :cond_0
    invoke-interface {p1, p0, p2}, Lorg/apache/sshd/common/channel/ChannelListener;->channelOpenFailure(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/Throwable;)V

    .line 468
    return-void
.end method

.method protected signalChannelOpenSuccess()V
    .locals 2

    .line 409
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/AbstractChannel;->invokeChannelSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    nop

    .line 422
    return-void

    .line 413
    :catchall_0
    move-exception v0

    .line 414
    .local v0, "err":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 416
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 417
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 415
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalChannelOpenSuccess(Lorg/apache/sshd/common/channel/ChannelListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/channel/ChannelListener;

    .line 425
    if-nez p1, :cond_0

    .line 426
    return-void

    .line 429
    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/channel/ChannelListener;->channelOpenSuccess(Lorg/apache/sshd/common/channel/Channel;)V

    .line 430
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getRecipient()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateIncomingDataSize(IJ)J
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "len"    # J

    .line 846
    invoke-static {p2, p3}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->isValidUint32Value(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v0

    .line 860
    .local v0, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v1

    .line 866
    .local v1, "maxLocalSize":J
    const-wide/16 v3, 0x4

    add-long/2addr v3, v1

    cmp-long v3, p2, v3

    if-gtz v3, :cond_0

    .line 872
    return-wide p2

    .line 867
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")  for cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 868
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - max. allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 847
    .end local v0    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    .end local v1    # "maxLocalSize":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non UINT32 length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 784
    .local v0, "s":Lorg/apache/sshd/common/session/Session;
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    return-object v1

    .line 787
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel;->log:Lorg/slf4j/Logger;

    const-string/jumbo v2, "writePacket({}) Discarding output packet because channel is being closed"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 790
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/channel/AbstractChannel$2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/sshd/common/channel/AbstractChannel$2;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
