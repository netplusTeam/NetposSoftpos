.class public Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
.super Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;
.source "DefaultForwardingFilter.java"

# interfaces
.implements Lorg/apache/sshd/common/forward/ForwardingFilter;
.implements Lorg/apache/sshd/common/session/SessionHolder;
.implements Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;",
        "Lorg/apache/sshd/common/forward/ForwardingFilter;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/common/session/Session;",
        ">;",
        "Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;"
    }
.end annotation


# static fields
.field public static final DEFAULT_FORWARD_REQUEST_TIMEOUT:J

.field public static final FORWARD_REQUEST_TIMEOUT:Ljava/lang/String; = "tcpip-forward-request-timeout"

.field public static final STATIC_IO_MSG_RECEIVED_EVENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

.field private final boundDynamic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final boundLocals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicLocal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/forward/SocksProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicLock:Ljava/lang/Object;

.field private final listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final localForwards:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/forward/LocalForwardingEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final localLock:Ljava/lang/Object;

.field private final localToRemote:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final managersHolder:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteToLocal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lorg/apache/sshd/common/session/ConnectionService;

.field private final sessionInstance:Lorg/apache/sshd/common/session/Session;

.field private final socksProxyIoHandlerFactory:Lorg/apache/sshd/common/io/IoHandlerFactory;

.field private final staticIoHandlerFactory:Lorg/apache/sshd/common/io/IoHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->DEFAULT_FORWARD_REQUEST_TIMEOUT:J

    .line 93
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->OPENED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    sget-object v1, Lorg/apache/sshd/client/channel/ClientChannelEvent;->CLOSED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 94
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->STATIC_IO_MSG_RECEIVED_EVENTS:Ljava/util/Set;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/session/ConnectionService;)V
    .locals 3
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;

    .line 117
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;-><init>()V

    .line 97
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda13;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->socksProxyIoHandlerFactory:Lorg/apache/sshd/common/io/IoHandlerFactory;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->boundLocals:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->dynamicLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->dynamicLocal:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->boundDynamic:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localForwards:Ljava/util/Set;

    .line 110
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->staticIoHandlerFactory:Lorg/apache/sshd/common/io/IoHandlerFactory;

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->listeners:Ljava/util/Collection;

    .line 112
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->managersHolder:Ljava/util/Collection;

    .line 118
    const-string v1, "No connection service"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/session/ConnectionService;

    iput-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->service:Lorg/apache/sshd/common/session/ConnectionService;

    .line 119
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    const-string v2, "No session"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/session/Session;

    iput-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->sessionInstance:Lorg/apache/sshd/common/session/Session;

    .line 120
    const-class v1, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localForwards:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/apache/sshd/common/session/ConnectionService;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->service:Lorg/apache/sshd/common/session/ConnectionService;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private doBind(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/Factory;)Ljava/net/InetSocketAddress;
    .locals 7
    .param p1, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/io/IoHandler;",
            ">;)",
            "Ljava/net/InetSocketAddress;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    .local p2, "handlerFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/io/IoHandler;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 958
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v0}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    const-string v2, "No factory manager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/FactoryManager;

    .line 959
    .local v1, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v1}, Lorg/apache/sshd/common/FactoryManager;->getIoServiceFactory()Lorg/apache/sshd/common/io/IoServiceFactory;

    move-result-object v2

    const-string v3, "No I/O service factory"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/io/IoServiceFactory;

    .line 960
    .local v2, "factory":Lorg/apache/sshd/common/io/IoServiceFactory;
    invoke-interface {p2}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/io/IoHandler;

    .line 961
    .local v3, "handler":Lorg/apache/sshd/common/io/IoHandler;
    invoke-interface {v2, v3}, Lorg/apache/sshd/common/io/IoServiceFactory;->createAcceptor(Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/IoAcceptor;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    .line 965
    .end local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v1    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v2    # "factory":Lorg/apache/sshd/common/io/IoServiceFactory;
    .end local v3    # "handler":Lorg/apache/sshd/common/io/IoHandler;
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoAcceptor;->getBoundAddresses()Ljava/util/Set;

    move-result-object v0

    .line 967
    .local v0, "before":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 968
    .local v1, "bindAddress":Ljava/net/InetSocketAddress;
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v2, v1}, Lorg/apache/sshd/common/io/IoAcceptor;->bind(Ljava/net/SocketAddress;)V

    .line 970
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v2}, Lorg/apache/sshd/common/io/IoAcceptor;->getBoundAddresses()Ljava/util/Set;

    move-result-object v2

    .line 971
    .local v2, "after":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v3

    if-lez v3, :cond_1

    .line 972
    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 974
    :cond_1
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "["

    if-nez v3, :cond_3

    .line 978
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_2

    .line 981
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->head(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    return-object v3

    .line 979
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple local addresses have been bound for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "before":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .end local p1    # "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "handlerFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/io/IoHandler;>;"
    throw v3

    .line 975
    .restart local v0    # "before":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .restart local p1    # "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "handlerFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/io/IoHandler;>;"
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error binding to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: no local addresses bound"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "before":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .end local p1    # "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "handlerFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/io/IoHandler;>;"
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 982
    .end local v1    # "bindAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "after":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .restart local v0    # "before":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .restart local p1    # "address":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "handlerFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/io/IoHandler;>;"
    :catch_0
    move-exception v1

    .line 983
    .local v1, "bindErr":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v2}, Lorg/apache/sshd/common/io/IoAcceptor;->getBoundAddresses()Ljava/util/Set;

    move-result-object v2

    .line 984
    .restart local v2    # "after":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 985
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->close()V

    .line 987
    :cond_4
    throw v1
.end method

.method static synthetic lambda$getLocalForwardsBindings$10(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 3
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 1159
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$getRemoteForwardsBindings$12(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 3
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 1182
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addPortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 130
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->listeners:Ljava/util/Collection;

    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public addPortForwardingEventListenerManager(Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;)Z
    .locals 2
    .param p1, "manager"    # Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;

    .line 149
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->managersHolder:Ljava/util/Collection;

    const-string v1, "No manager"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBoundLocalPortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 4
    .param p1, "port"    # I

    .line 1144
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid local port: %d"

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 1146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1147
    .local v0, "portKey":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    monitor-enter v1

    .line 1148
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    monitor-exit v1

    return-object v2

    .line 1149
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBoundRemotePortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 4
    .param p1, "port"    # I

    .line 1189
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid remote port: %d"

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 1191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1192
    .local v0, "portKey":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    monitor-enter v1

    .line 1193
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    monitor-exit v1

    return-object v2

    .line 1194
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->service:Lorg/apache/sshd/common/session/ConnectionService;

    return-object v0
.end method

.method protected getDefaultListeners()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "defaultListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/forward/PortForwardingEventListener;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 175
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v1}, Lorg/apache/sshd/common/session/Session;->getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v2

    .line 176
    .local v2, "l":Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v4

    .line 181
    .local v4, "manager":Lorg/apache/sshd/common/FactoryManager;
    :goto_0
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lorg/apache/sshd/common/FactoryManager;->getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 182
    if-eqz v2, :cond_3

    .line 183
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_3
    return-object v0
.end method

.method public declared-synchronized getForwardedPort(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 3
    .param p1, "remotePort"    # I

    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 690
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 691
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 688
    .end local p1    # "remotePort":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 3

    monitor-enter p0

    .line 939
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->dynamicLocal:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->parallel(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 939
    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalForwardsBindings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    monitor-enter v0

    .line 1155
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    .line 1157
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1158
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda10;-><init>()V

    .line 1159
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda11;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)V

    .line 1160
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_0
    monitor-exit v0

    .line 1155
    return-object v1

    .line 1161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    return-object v0
.end method

.method public getRegisteredManagers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->managersHolder:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->managersHolder:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method public getRemoteForwardsBindings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ">;>;"
        }
    .end annotation

    .line 1177
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    monitor-enter v0

    .line 1178
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    .line 1180
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1181
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda6;-><init>()V

    .line 1182
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda7;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)V

    .line 1183
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_0
    monitor-exit v0

    .line 1178
    return-object v1

    .line 1184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->sessionInstance:Lorg/apache/sshd/common/session/Session;

    return-object v0
.end method

.method public getStartedLocalPortForwards()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    monitor-enter v0

    .line 1167
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1171
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStartedRemotePortForwards()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1199
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    monitor-enter v0

    .line 1200
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1204
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected invokePortEventListenerSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/Invoker<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 855
    .local p1, "invoker":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<Lorg/apache/sshd/common/forward/PortForwardingEventListener;Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 857
    .local v0, "err":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getDefaultListeners()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignallerListeners(Ljava/util/Collection;Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    goto :goto_0

    .line 858
    :catchall_0
    move-exception v1

    .line 859
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 860
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 864
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->managersHolder:Ljava/util/Collection;

    invoke-virtual {p0, v1, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignallerHolders(Ljava/util/Collection;Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 868
    goto :goto_1

    .line 865
    :catchall_1
    move-exception v1

    .line 866
    .restart local v1    # "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 867
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 870
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    if-nez v0, :cond_0

    .line 873
    return-void

    .line 871
    :cond_0
    throw v0
.end method

.method protected invokePortEventListenerSignallerHolders(Ljava/util/Collection;Lorg/apache/sshd/common/util/Invoker;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;",
            ">;",
            "Lorg/apache/sshd/common/util/Invoker<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 905
    .local p1, "holders":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;>;"
    .local p2, "invoker":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<Lorg/apache/sshd/common/forward/PortForwardingEventListener;Ljava/lang/Void;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    return-void

    .line 909
    :cond_0
    const/4 v0, 0x0

    .line 911
    .local v0, "err":Ljava/lang/Throwable;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;

    .line 913
    .local v2, "m":Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;
    :try_start_0
    invoke-interface {v2}, Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;->getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v3

    .line 914
    .local v3, "listener":Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    if-eqz v3, :cond_1

    .line 915
    invoke-interface {p2, v3}, Lorg/apache/sshd/common/util/Invoker;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    .end local v3    # "listener":Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    :cond_1
    goto :goto_1

    .line 917
    :catchall_0
    move-exception v3

    .line 918
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 919
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 922
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    instance-of v3, v2, Lorg/apache/sshd/common/forward/PortForwardingEventListenerManagerHolder;

    if-eqz v3, :cond_2

    .line 924
    :try_start_1
    move-object v3, v2

    check-cast v3, Lorg/apache/sshd/common/forward/PortForwardingEventListenerManagerHolder;

    invoke-interface {v3}, Lorg/apache/sshd/common/forward/PortForwardingEventListenerManagerHolder;->getRegisteredManagers()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignallerHolders(Ljava/util/Collection;Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 928
    goto :goto_2

    .line 925
    :catchall_1
    move-exception v3

    .line 926
    .restart local v3    # "t":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 927
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 930
    .end local v2    # "m":Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    goto :goto_0

    .line 932
    :cond_3
    if-nez v0, :cond_4

    .line 935
    return-void

    .line 933
    :cond_4
    throw v0
.end method

.method protected invokePortEventListenerSignallerListeners(Ljava/util/Collection;Lorg/apache/sshd/common/util/Invoker;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            ">;",
            "Lorg/apache/sshd/common/util/Invoker<",
            "Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 878
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/forward/PortForwardingEventListener;>;"
    .local p2, "invoker":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<Lorg/apache/sshd/common/forward/PortForwardingEventListener;Ljava/lang/Void;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    return-void

    .line 882
    :cond_0
    const/4 v0, 0x0

    .line 884
    .local v0, "err":Ljava/lang/Throwable;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 885
    .local v2, "l":Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    if-nez v2, :cond_1

    .line 886
    goto :goto_0

    .line 890
    :cond_1
    :try_start_0
    invoke-interface {p2, v2}, Lorg/apache/sshd/common/util/Invoker;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    goto :goto_1

    .line 891
    :catchall_0
    move-exception v3

    .line 892
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 893
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 895
    .end local v2    # "l":Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 897
    :cond_2
    if-nez v0, :cond_3

    .line 900
    return-void

    .line 898
    :cond_3
    throw v0
.end method

.method synthetic lambda$getLocalForwardsBindings$11$org-apache-sshd-common-forward-DefaultForwardingFilter()Ljava/util/ArrayList;
    .locals 2

    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method synthetic lambda$getRemoteForwardsBindings$13$org-apache-sshd-common-forward-DefaultForwardingFilter()Ljava/util/ArrayList;
    .locals 2

    .line 1183
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method synthetic lambda$new$0$org-apache-sshd-common-forward-DefaultForwardingFilter()Lorg/apache/sshd/common/io/IoHandler;
    .locals 2

    .line 97
    new-instance v0, Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getConnectionService()Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/forward/SocksProxy;-><init>(Lorg/apache/sshd/common/session/ConnectionService;)V

    return-object v0
.end method

.method synthetic lambda$new$1$org-apache-sshd-common-forward-DefaultForwardingFilter()Lorg/apache/sshd/common/io/IoHandler;
    .locals 1

    .line 110
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)V

    return-object v0
.end method

.method synthetic lambda$signalEstablishedDynamicTunnel$4$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "reason"    # Ljava/lang/Throwable;
    .param p4, "l"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 516
    invoke-virtual {p0, p4, p1, p2, p3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedDynamicTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalEstablishedExplicitTunnel$9$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;
    .locals 7
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "localForwarding"    # Z
    .param p4, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p5, "reason"    # Ljava/lang/Throwable;
    .param p6, "l"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 824
    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedExplicitTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 825
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalEstablishingDynamicTunnel$5$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "l"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 547
    invoke-virtual {p0, p2, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishingDynamicTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalEstablishingExplicitTunnel$8$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "localForwarding"    # Z
    .param p4, "l"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 790
    invoke-virtual {p0, p4, p1, p2, p3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishingExplicitTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Z)V

    .line 791
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalTearingDownDynamicTunnel$6$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "l"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 632
    invoke-virtual {p0, p2, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTearingDownDynamicTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 633
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalTearingDownExplicitTunnel$2$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "localForwarding"    # Z
    .param p3, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "l"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 390
    invoke-virtual {p0, p4, p1, p2, p3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTearingDownExplicitTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalTornDownDynamicTunnel$7$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;
    .locals 1
    .param p1, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "reason"    # Ljava/lang/Throwable;
    .param p3, "l"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 660
    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownDynamicTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$signalTornDownExplicitTunnel$3$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;
    .locals 6
    .param p1, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "localForwarding"    # Z
    .param p3, "remoteAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "reason"    # Ljava/lang/Throwable;
    .param p5, "l"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 423
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownExplicitTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized localPortForwardingCancelled(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 5
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 757
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localForwards:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 758
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v2

    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localForwards:Ljava/util/Set;

    invoke-static {v1, v2, v3}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->findMatchingEntry(Ljava/lang/String;ILjava/util/Collection;)Lorg/apache/sshd/common/forward/LocalForwardingEntry;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 759
    .local v1, "entry":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    if-eqz v1, :cond_0

    .line 760
    :try_start_2
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localForwards:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 762
    .end local v1    # "entry":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    :catchall_0
    move-exception v1

    goto :goto_2

    .restart local v1    # "entry":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 764
    if-eqz v1, :cond_2

    :try_start_4
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localPortForwardingCancelled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") unbind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 769
    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTearingDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 771
    :try_start_5
    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-virtual {v1}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->toInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/sshd/common/io/IoAcceptor;->unbind(Ljava/net/SocketAddress;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 775
    nop

    .line 777
    :try_start_6
    invoke-virtual {p0, v1, v0, v2, v2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 772
    :catch_0
    move-exception v3

    .line 773
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 774
    throw v3

    .line 779
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 780
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localPortForwardingCancelled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") no match/acceptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 783
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 762
    .end local v1    # "entry":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    :catchall_1
    move-exception v1

    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 756
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized localPortForwardingRequested(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 13
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 696
    :try_start_0
    const-string v0, "Local address is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 697
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Invalid local port: %s"

    invoke-static {v0, v3, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 699
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 700
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v0}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v3

    const-string v4, "No factory manager"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/FactoryManager;

    .line 701
    .local v3, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v3}, Lorg/apache/sshd/common/FactoryManager;->getTcpForwardingFilter()Lorg/apache/sshd/server/forward/TcpForwardingFilter;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 703
    .local v4, "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    :try_start_1
    invoke-interface {v4, p1, v0}, Lorg/apache/sshd/server/forward/TcpForwardingFilter;->canListen(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_1

    goto/16 :goto_5

    .line 716
    :cond_1
    nop

    .line 718
    :try_start_2
    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishingExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 721
    :try_start_3
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->staticIoHandlerFactory:Lorg/apache/sshd/common/io/IoHandlerFactory;

    invoke-direct {p0, p1, v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->doBind(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/Factory;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 722
    .local v1, "bound":Ljava/net/InetSocketAddress;
    new-instance v2, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v2, v5, v6}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 723
    .local v2, "result":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 724
    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "localPortForwardingRequested("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 728
    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :cond_2
    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localForwards:Ljava/util/Set;

    monitor-enter v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 730
    :try_start_4
    iget-object v6, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localForwards:Ljava/util/Set;

    new-instance v7, Lorg/apache/sshd/common/forward/LocalForwardingEntry;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 731
    .local v6, "added":Z
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 733
    if-eqz v6, :cond_3

    .line 744
    .end local v1    # "bound":Ljava/net/InetSocketAddress;
    .end local v6    # "added":Z
    nop

    .line 747
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    move-object v11, v2

    :try_start_5
    invoke-virtual/range {v7 .. v12}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 748
    monitor-exit p0

    return-object v2

    .line 749
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 750
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 734
    .local v1, "bound":Ljava/net/InetSocketAddress;
    .restart local v6    # "added":Z
    :cond_3
    :try_start_7
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to add local port forwarding entry for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v3    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v4    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 731
    .end local v6    # "added":Z
    .restart local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v3    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .restart local v4    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_0
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v3    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v4    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 736
    .end local v1    # "bound":Ljava/net/InetSocketAddress;
    .end local v2    # "result":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v3    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .restart local v4    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    .line 738
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_a
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localPortForwardingCancelled(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 741
    goto :goto_4

    .line 739
    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    .line 740
    .local v2, "err":Ljava/lang/Exception;
    :goto_3
    :try_start_b
    invoke-virtual {v1, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 742
    .end local v2    # "err":Ljava/lang/Exception;
    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v10, v1

    invoke-virtual/range {v5 .. v10}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 743
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 704
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    :try_start_c
    iget-object v6, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 705
    iget-object v6, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "localPortForwardingRequested("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "][haveFilter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v4, :cond_5

    move v8, v2

    goto :goto_6

    :cond_5
    move v8, v1

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] rejected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 707
    :cond_6
    monitor-exit p0

    return-object v5

    .line 709
    :catch_6
    move-exception v5

    .line 710
    .local v5, "e":Ljava/lang/Error;
    :try_start_d
    iget-object v6, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    const-string v7, "localPortForwardingRequested({})[{}] failed ({}) to consult forwarding filter: {}"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v1

    aput-object p1, v8, v2

    const/4 v1, 0x2

    .line 711
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x3

    invoke-virtual {v5}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    .line 710
    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 713
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localPortForwardingRequested("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "] filter consultation failure details"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 715
    :cond_7
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v1, v5}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 695
    .end local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v3    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .end local v4    # "filter":Lorg/apache/sshd/server/forward/TcpForwardingFilter;
    .end local v5    # "e":Ljava/lang/Error;
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected preClose()V
    .locals 1

    .line 944
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 945
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->managersHolder:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 946
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;->preClose()V

    .line 947
    return-void
.end method

.method public removePortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 135
    if-nez p1, :cond_0

    .line 136
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->listeners:Ljava/util/Collection;

    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public removePortForwardingEventListenerManager(Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;)Z
    .locals 1
    .param p1, "manager"    # Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->managersHolder:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected signalEstablishedDynamicTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    if-nez p1, :cond_0

    .line 538
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->establishedDynamicTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 542
    return-void
.end method

.method protected signalEstablishedDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    nop

    .line 532
    return-void

    .line 519
    :catchall_0
    move-exception v0

    .line 520
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 522
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 524
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 525
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 527
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to signal establishing dynamic tunnel for local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on bound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 523
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 521
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalEstablishedExplicitTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "localForwarding"    # Z
    .param p5, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p6, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    if-nez p1, :cond_0

    .line 848
    return-void

    .line 851
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->establishedExplicitTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 852
    return-void
.end method

.method protected signalEstablishedExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "localForwarding"    # Z
    .param p4, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p5, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    :try_start_0
    new-instance v7, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v7}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    nop

    .line 841
    return-void

    .line 827
    :catchall_0
    move-exception v0

    .line 828
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 830
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 832
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 833
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 835
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to signal established explicit tunnel for local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remote="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localForwarding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 831
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 829
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalEstablishingDynamicTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    if-nez p1, :cond_0

    .line 566
    return-void

    .line 569
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->establishingDynamicTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 570
    return-void
.end method

.method protected signalEstablishingDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 4
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda4;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    nop

    .line 562
    return-void

    .line 550
    :catchall_0
    move-exception v0

    .line 551
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 553
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 555
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 556
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 558
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to signal establishing dynamic tunnel for local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 554
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 552
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalEstablishingExplicitTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Z)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "localForwarding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    if-nez p1, :cond_0

    .line 812
    return-void

    .line 815
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->establishingExplicitTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Z)V

    .line 816
    return-void
.end method

.method protected signalEstablishingExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Z)V
    .locals 4
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "localForwarding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda12;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    nop

    .line 806
    return-void

    .line 793
    :catchall_0
    move-exception v0

    .line 794
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 796
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 798
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 799
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 801
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to signal establishing explicit tunnel for local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remote="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localForwarding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 797
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 795
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalTearingDownDynamicTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    if-nez p1, :cond_0

    .line 651
    return-void

    .line 654
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->tearingDownDynamicTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 655
    return-void
.end method

.method protected signalTearingDownDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 4
    .param p1, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda9;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    nop

    .line 647
    return-void

    .line 635
    :catchall_0
    move-exception v0

    .line 636
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 638
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 640
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 641
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 643
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to signal tearing down dynamic tunnel for address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 639
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 637
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalTearingDownExplicitTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .param p2, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "localForwarding"    # Z
    .param p4, "remoteAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    if-nez p1, :cond_0

    .line 412
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->tearingDownExplicitTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 416
    return-void
.end method

.method protected signalTearingDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 4
    .param p1, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "localForwarding"    # Z
    .param p3, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda8;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    nop

    .line 406
    return-void

    .line 393
    :catchall_0
    move-exception v0

    .line 394
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 396
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 398
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 399
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 401
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to signal tearing down explicit tunnel for local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on bound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 397
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 395
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalTornDownDynamicTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    if-nez p1, :cond_0

    .line 681
    return-void

    .line 684
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->tornDownDynamicTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 685
    return-void
.end method

.method protected signalTornDownDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    :try_start_0
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda3;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    nop

    .line 675
    return-void

    .line 663
    :catchall_0
    move-exception v0

    .line 664
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 666
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 668
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 669
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 671
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to signal torn down dynamic tunnel for address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 667
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 665
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method protected signalTornDownExplicitTunnel(Lorg/apache/sshd/common/forward/PortForwardingEventListener;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .param p2, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "localForwarding"    # Z
    .param p4, "remoteAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p5, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    if-nez p1, :cond_0

    .line 445
    return-void

    .line 448
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->tornDownExplicitTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 449
    return-void
.end method

.method protected signalTornDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "localForwarding"    # Z
    .param p3, "remoteAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    :try_start_0
    new-instance v6, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->invokePortEventListenerSignaller(Lorg/apache/sshd/common/util/Invoker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    nop

    .line 439
    return-void

    .line 426
    :catchall_0
    move-exception v0

    .line 427
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 429
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 431
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 432
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 434
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to signal torn down explicit tunnel local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on bound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 430
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 428
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method public declared-synchronized startDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 10
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 453
    :try_start_0
    const-string v0, "Local address is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 454
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid local port: %s"

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 459
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->isClosing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    const/4 v1, 0x0

    .line 466
    .local v1, "bound":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishingDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 468
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->socksProxyIoHandlerFactory:Lorg/apache/sshd/common/io/IoHandlerFactory;

    invoke-direct {p0, p1, v3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->doBind(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/Factory;)Ljava/net/InetSocketAddress;

    move-result-object v3

    move-object v1, v3

    .line 469
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 470
    .local v3, "port":I
    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->dynamicLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 471
    :try_start_2
    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->dynamicLocal:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sshd/common/forward/SocksProxy;

    .line 472
    .local v5, "prevProxy":Lorg/apache/sshd/common/forward/SocksProxy;
    if-nez v5, :cond_3

    .line 477
    iget-object v6, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->boundDynamic:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    .line 478
    .local v6, "prevBound":Ljava/net/InetSocketAddress;
    if-nez v6, :cond_2

    .line 483
    new-instance v7, Lorg/apache/sshd/common/forward/SocksProxy;

    iget-object v8, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-direct {v7, v8}, Lorg/apache/sshd/common/forward/SocksProxy;-><init>(Lorg/apache/sshd/common/session/ConnectionService;)V

    move-object v0, v7

    .line 484
    iget-object v7, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->dynamicLocal:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v7, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->boundDynamic:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    nop

    .end local v5    # "prevProxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .end local v6    # "prevBound":Ljava/net/InetSocketAddress;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    nop

    .line 498
    :try_start_3
    new-instance v4, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 499
    .local v4, "result":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startDynamicPortForwarding("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 503
    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :cond_1
    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 504
    monitor-exit p0

    return-object v4

    .line 505
    .end local v4    # "result":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 506
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->stopDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 507
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 479
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "prevProxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .restart local v6    # "prevBound":Ljava/net/InetSocketAddress;
    :cond_2
    :try_start_5
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multiple dynamic port bindings found for port="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": current="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", previous="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .end local v1    # "bound":Ljava/net/InetSocketAddress;
    .end local v3    # "port":I
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    throw v7

    .line 473
    .end local v6    # "prevBound":Ljava/net/InetSocketAddress;
    .restart local v0    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .restart local v1    # "bound":Ljava/net/InetSocketAddress;
    .restart local v3    # "port":I
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :cond_3
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Multiple dynamic port mappings found for port="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": current="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", previous="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .end local v1    # "bound":Ljava/net/InetSocketAddress;
    .end local v3    # "port":I
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    throw v6

    .line 486
    .end local v5    # "prevProxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .restart local v0    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .restart local v1    # "bound":Ljava/net/InetSocketAddress;
    .restart local v3    # "port":I
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .end local v1    # "bound":Ljava/net/InetSocketAddress;
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 487
    .end local v3    # "port":I
    .restart local v0    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .restart local v1    # "bound":Ljava/net/InetSocketAddress;
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 489
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->unbindDynamicForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/forward/SocksProxy;Ljava/net/InetSocketAddress;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 492
    goto :goto_4

    .line 490
    :catch_4
    move-exception v4

    goto :goto_3

    :catch_5
    move-exception v4

    .line 491
    .local v4, "err":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 493
    .end local v4    # "err":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 494
    throw v3

    .line 460
    .end local v0    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .end local v1    # "bound":Ljava/net/InetSocketAddress;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TcpipForwarder is closing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TcpipForwarder is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 452
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 10
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_0
    const-string v0, "Local address is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Invalid local port: %s"

    invoke-static {v0, v2, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v0, "Remote address is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 198
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->isClosing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "bound":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishingExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->staticIoHandlerFactory:Lorg/apache/sshd/common/io/IoHandlerFactory;

    invoke-direct {p0, p1, v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->doBind(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/Factory;)Ljava/net/InetSocketAddress;

    move-result-object v1

    move-object v0, v1

    .line 207
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 208
    .local v1, "port":I
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    :try_start_2
    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 210
    .local v3, "prevRemote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    if-nez v3, :cond_3

    .line 215
    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->boundLocals:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    .line 216
    .local v4, "prevBound":Ljava/net/InetSocketAddress;
    if-nez v4, :cond_2

    .line 221
    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->boundLocals:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    nop

    .end local v3    # "prevRemote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local v4    # "prevBound":Ljava/net/InetSocketAddress;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    nop

    .line 235
    :try_start_3
    new-instance v2, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 236
    .local v2, "result":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startLocalPortForwarding("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 239
    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :cond_1
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    monitor-exit p0

    return-object v2

    .line 241
    .end local v2    # "result":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->stopLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 243
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "prevRemote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local v4    # "prevBound":Ljava/net/InetSocketAddress;
    :cond_2
    :try_start_5
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple local port forwarding bindings on port="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", previous="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bound":Ljava/net/InetSocketAddress;
    .end local v1    # "port":I
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    throw v5

    .line 211
    .end local v4    # "prevBound":Ljava/net/InetSocketAddress;
    .restart local v0    # "bound":Ljava/net/InetSocketAddress;
    .restart local v1    # "port":I
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple local port forwarding addressing on port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": current="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previous="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bound":Ljava/net/InetSocketAddress;
    .end local v1    # "port":I
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    throw v4

    .line 223
    .end local v3    # "prevRemote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local v0    # "bound":Ljava/net/InetSocketAddress;
    .restart local v1    # "port":I
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "bound":Ljava/net/InetSocketAddress;
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 224
    .end local v1    # "port":I
    .restart local v0    # "bound":Ljava/net/InetSocketAddress;
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->unbindLocalForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/net/InetSocketAddress;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 229
    goto :goto_4

    .line 227
    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    .line 228
    .local v2, "err":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 230
    .end local v2    # "err":Ljava/lang/Exception;
    :goto_4
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 231
    throw v1

    .line 199
    .end local v0    # "bound":Ljava/net/InetSocketAddress;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TcpipForwarder is closing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TcpipForwarder is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 190
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .locals 19
    .param p1, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    monitor-enter p0

    .line 293
    :try_start_0
    const-string v0, "Local address is null"

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    const-string v0, "Remote address is null"

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 297
    .local v10, "remoteHost":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v0

    move v11, v0

    .line 298
    .local v11, "remotePort":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    move-object v6, v0

    .line 299
    .local v6, "session":Lorg/apache/sshd/common/session/Session;
    const/16 v0, 0x50

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x40

    invoke-interface {v6, v0, v1}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    move-object v5, v0

    .line 300
    .local v5, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    const-string/jumbo v0, "tcpip-forward"

    invoke-virtual {v5, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 302
    invoke-virtual {v5, v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 303
    int-to-long v0, v11

    invoke-virtual {v5, v0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 305
    const-string/jumbo v0, "tcpip-forward-request-timeout"

    sget-wide v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->DEFAULT_FORWARD_REQUEST_TIMEOUT:J

    invoke-interface {v6, v0, v1, v2}, Lorg/apache/sshd/common/session/Session;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v15

    .line 308
    .local v15, "timeout":J
    const/4 v0, 0x0

    invoke-virtual {v7, v9, v8, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishingExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 310
    :try_start_1
    const-string/jumbo v13, "tcpip-forward"

    sget-object v17, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v12, v6

    move-object v14, v5

    invoke-interface/range {v12 .. v17}, Lorg/apache/sshd/common/session/Session;->request(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;JLjava/util/concurrent/TimeUnit;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v0

    .line 311
    .local v12, "result":Lorg/apache/sshd/common/util/buffer/Buffer;
    if-eqz v12, :cond_3

    .line 314
    if-nez v11, :cond_0

    :try_start_2
    invoke-virtual {v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 324
    .end local v12    # "result":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_8

    .line 314
    .restart local v12    # "result":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_0
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v0

    :goto_1
    move v13, v0

    .line 316
    .local v13, "port":I
    iget-object v1, v7, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    monitor-enter v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 317
    :try_start_4
    iget-object v0, v7, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 318
    .local v0, "prev":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    if-nez v0, :cond_2

    .line 321
    iget-object v2, v7, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    nop

    .end local v0    # "prev":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    nop

    .line 335
    :try_start_5
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-direct {v0, v10, v13}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 336
    .local v0, "bound":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    iget-object v1, v7, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_1

    .line 337
    :try_start_6
    iget-object v1, v7, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRemotePortForwarding("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 342
    .end local v0    # "bound":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_5

    .line 340
    .restart local v0    # "bound":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v17, v5

    .end local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v17, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    move-object v5, v0

    move-object/from16 v18, v6

    .end local v6    # "session":Lorg/apache/sshd/common/session/Session;
    .local v18, "session":Lorg/apache/sshd/common/session/Session;
    move-object v6, v14

    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 341
    monitor-exit p0

    return-object v0

    .line 342
    .end local v0    # "bound":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_5

    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v6    # "session":Lorg/apache/sshd/common/session/Session;
    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    :goto_4
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 343
    .end local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v6    # "session":Lorg/apache/sshd/common/session/Session;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v18    # "session":Lorg/apache/sshd/common/session/Session;
    :goto_5
    :try_start_8
    invoke-virtual/range {p0 .. p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->stopRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 344
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 319
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .local v0, "prev":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v6    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_2
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v6    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v18    # "session":Lorg/apache/sshd/common/session/Session;
    :try_start_9
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple remote port forwarding bindings on port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v10    # "remoteHost":Ljava/lang/String;
    .end local v11    # "remotePort":I
    .end local v12    # "result":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v13    # "port":I
    .end local v15    # "timeout":J
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .end local p1    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    throw v2

    .line 322
    .end local v0    # "prev":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v6    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v10    # "remoteHost":Ljava/lang/String;
    .restart local v11    # "remotePort":I
    .restart local v12    # "result":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v13    # "port":I
    .restart local v15    # "timeout":J
    .restart local p1    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v6    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v18    # "session":Lorg/apache/sshd/common/session/Session;
    :goto_6
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v10    # "remoteHost":Ljava/lang/String;
    .end local v11    # "remotePort":I
    .end local v15    # "timeout":J
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .end local p1    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :try_start_a
    throw v0

    .restart local v10    # "remoteHost":Ljava/lang/String;
    .restart local v11    # "remotePort":I
    .restart local v15    # "timeout":J
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local p1    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 312
    .end local v13    # "port":I
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v6    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_3
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v6    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v18    # "session":Lorg/apache/sshd/common/session/Session;
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "Tcpip forwarding request denied by server"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    .end local v10    # "remoteHost":Ljava/lang/String;
    .end local v11    # "remotePort":I
    .end local v15    # "timeout":J
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .end local p1    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 324
    .end local v12    # "result":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v10    # "remoteHost":Ljava/lang/String;
    .restart local v11    # "remotePort":I
    .restart local v15    # "timeout":J
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local p1    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_8

    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v6    # "session":Lorg/apache/sshd/common/session/Session;
    :catch_a
    move-exception v0

    goto :goto_7

    :catch_b
    move-exception v0

    :goto_7
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v6    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v18    # "session":Lorg/apache/sshd/common/session/Session;
    :goto_8
    move-object v12, v0

    .line 326
    .local v12, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual/range {p0 .. p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->stopRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 329
    goto :goto_a

    .line 327
    :catch_c
    move-exception v0

    goto :goto_9

    :catch_d
    move-exception v0

    .line 328
    .local v0, "err":Ljava/lang/Exception;
    :goto_9
    :try_start_c
    invoke-virtual {v12, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 330
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalEstablishedExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 331
    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 292
    .end local v10    # "remoteHost":Ljava/lang/String;
    .end local v11    # "remotePort":I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "timeout":J
    .end local v17    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v18    # "session":Lorg/apache/sshd/common/session/Session;
    .end local p1    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 5
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 576
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v0

    .line 577
    .local v0, "port":I
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->dynamicLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 578
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->dynamicLocal:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/forward/SocksProxy;

    .line 579
    .local v2, "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->boundDynamic:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 580
    .local v3, "bound":Ljava/net/InetSocketAddress;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :try_start_2
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->unbindDynamicForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/forward/SocksProxy;Ljava/net/InetSocketAddress;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 583
    monitor-exit p0

    return-void

    .line 580
    .end local v2    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .end local v3    # "bound":Ljava/net/InetSocketAddress;
    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 575
    .end local v0    # "port":I
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 5
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 249
    :try_start_0
    const-string v0, "Local address is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v0

    .line 254
    .local v0, "port":I
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->localToRemote:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 256
    .local v2, "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->boundLocals:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 257
    .local v3, "bound":Ljava/net/InetSocketAddress;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :try_start_2
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->unbindLocalForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/net/InetSocketAddress;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    monitor-exit p0

    return-void

    .line 257
    .end local v2    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local v3    # "bound":Ljava/net/InetSocketAddress;
    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 248
    .end local v0    # "port":I
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 8
    .param p1, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v0

    .line 352
    .local v0, "port":I
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->remoteToLocal:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 354
    .local v2, "bound":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    if-eqz v2, :cond_1

    .line 357
    :try_start_2
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRemotePortForwarding("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") cancel forwarding to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 361
    .end local p0    # "this":Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "remoteHost":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v3

    .line 363
    .local v3, "session":Lorg/apache/sshd/common/session/Session;
    const/16 v4, 0x50

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x40

    invoke-interface {v3, v4, v5}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v4

    .line 364
    .local v4, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    const-string v5, "cancel-tcpip-forward"

    invoke-virtual {v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 365
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 366
    invoke-virtual {v4, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 367
    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 369
    invoke-virtual {p0, v2, v5, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTearingDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 371
    :try_start_3
    invoke-interface {v3, v4}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    nop

    .line 377
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {p0, v2, v5, p1, v6}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 378
    .end local v1    # "remoteHost":Ljava/lang/String;
    .end local v3    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v4    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    goto :goto_1

    .line 372
    .restart local v1    # "remoteHost":Ljava/lang/String;
    .restart local v3    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v4    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    .line 373
    .local v6, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, v2, v5, p1, v6}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 374
    throw v6

    .line 379
    .end local v1    # "remoteHost":Ljava/lang/String;
    .end local v3    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v4    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRemotePortForwarding("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") no binding found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 383
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 354
    .end local v2    # "bound":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 350
    .end local v0    # "port":I
    .end local p1    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unbindDynamicForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/forward/SocksProxy;Ljava/net/InetSocketAddress;)V
    .locals 10
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "proxy"    # Lorg/apache/sshd/common/forward/SocksProxy;
    .param p3, "bound"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    const-string v0, "stopDynamicPortForwarding({}) close proxy={}"

    const-string v1, "stopDynamicPortForwarding({}) unbind address={}"

    const-string v2, "stopDynamicPortForwarding({}) no acceptor({}) or no binding({})"

    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    .line 588
    .local v3, "debugEnabled":Z
    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    if-eqz v3, :cond_a

    .line 624
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    const-string v1, "stopDynamicPortForwarding({}) no binding found"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 591
    :cond_1
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTearingDownDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 595
    if-eqz p2, :cond_6

    .line 596
    if-eqz v3, :cond_2

    .line 597
    :try_start_1
    iget-object v8, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v8, v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 600
    :cond_2
    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/forward/SocksProxy;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 603
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_4

    :try_start_2
    iget-object v8, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    if-eqz v8, :cond_4

    .line 604
    if-eqz v3, :cond_3

    .line 605
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, p1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    :cond_3
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v1, p3}, Lorg/apache/sshd/common/io/IoAcceptor;->unbind(Ljava/net/SocketAddress;)V

    goto :goto_1

    .line 609
    :cond_4
    if-eqz v3, :cond_5

    .line 610
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    aput-object v5, v6, v7

    aput-object p3, v6, v4

    invoke-interface {v1, v2, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    :cond_5
    :goto_1
    nop

    .end local v3    # "debugEnabled":Z
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .end local p3    # "bound":Ljava/net/InetSocketAddress;
    throw v0

    .line 603
    .restart local v3    # "debugEnabled":Z
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .restart local p3    # "bound":Ljava/net/InetSocketAddress;
    :cond_6
    :goto_2
    if-eqz p3, :cond_8

    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    if-eqz v0, :cond_8

    .line 604
    if-eqz v3, :cond_7

    .line 605
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, v1, p1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    :cond_7
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v0, p3}, Lorg/apache/sshd/common/io/IoAcceptor;->unbind(Ljava/net/SocketAddress;)V

    goto :goto_4

    .line 615
    :catch_0
    move-exception v0

    goto :goto_3

    .line 609
    :cond_8
    if-eqz v3, :cond_9

    .line 610
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    aput-object v5, v1, v7

    aput-object p3, v1, v4

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 616
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_3
    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 617
    throw v0

    .line 618
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_9
    :goto_4
    nop

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 627
    :cond_a
    :goto_5
    return-void

    .line 593
    :catchall_1
    move-exception v8

    .line 595
    if-eqz p2, :cond_f

    .line 596
    if-eqz v3, :cond_b

    .line 597
    :try_start_3
    iget-object v9, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v9, v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 600
    :cond_b
    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/forward/SocksProxy;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    .line 603
    :catchall_2
    move-exception v0

    if-eqz p3, :cond_d

    :try_start_4
    iget-object v8, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    if-eqz v8, :cond_d

    .line 604
    if-eqz v3, :cond_c

    .line 605
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, p1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    :cond_c
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v1, p3}, Lorg/apache/sshd/common/io/IoAcceptor;->unbind(Ljava/net/SocketAddress;)V

    goto :goto_6

    .line 609
    :cond_d
    if-eqz v3, :cond_e

    .line 610
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    aput-object v5, v6, v7

    aput-object p3, v6, v4

    invoke-interface {v1, v2, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    :cond_e
    :goto_6
    nop

    .end local v3    # "debugEnabled":Z
    .end local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local p2    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .end local p3    # "bound":Ljava/net/InetSocketAddress;
    throw v0

    .line 603
    .restart local v3    # "debugEnabled":Z
    .restart local p1    # "local":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .restart local p2    # "proxy":Lorg/apache/sshd/common/forward/SocksProxy;
    .restart local p3    # "bound":Ljava/net/InetSocketAddress;
    :cond_f
    :goto_7
    if-eqz p3, :cond_11

    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    if-eqz v0, :cond_11

    .line 604
    if-eqz v3, :cond_10

    .line 605
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, v1, p1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    :cond_10
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v0, p3}, Lorg/apache/sshd/common/io/IoAcceptor;->unbind(Ljava/net/SocketAddress;)V

    goto :goto_9

    .line 615
    :catch_1
    move-exception v0

    goto :goto_8

    .line 609
    :cond_11
    if-eqz v3, :cond_12

    .line 610
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    aput-object v5, v1, v7

    aput-object p3, v1, v4

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    .line 616
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8
    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownDynamicTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 617
    throw v0

    .line 618
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_12
    :goto_9
    nop

    .line 619
    throw v8
.end method

.method protected unbindLocalForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 6
    .param p1, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "bound"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    if-eqz v4, :cond_1

    .line 266
    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    aput-object p3, v0, v1

    const-string/jumbo v1, "unbindLocalForwarding({} => {}) unbind {}"

    invoke-interface {v4, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-direct {v0, p3}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/net/InetSocketAddress;)V

    .line 272
    .local v0, "boundAddress":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :try_start_0
    invoke-virtual {p0, v0, v3, p2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTearingDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v1, p3}, Lorg/apache/sshd/common/io/IoAcceptor;->unbind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    nop

    .line 282
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, p2, v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 283
    .end local v0    # "boundAddress":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    goto :goto_0

    .line 276
    .restart local v0    # "boundAddress":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0, v3, p2, v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 278
    throw v1

    .line 274
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    .line 275
    :try_start_2
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    invoke-interface {v2, p3}, Lorg/apache/sshd/common/io/IoAcceptor;->unbind(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 279
    nop

    .line 280
    throw v1

    .line 276
    :catch_1
    move-exception v1

    .line 277
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0, v3, p2, v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->signalTornDownExplicitTunnel(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V

    .line 278
    throw v1

    .line 284
    .end local v0    # "boundAddress":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v3

    aput-object p3, v5, v1

    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->acceptor:Lorg/apache/sshd/common/io/IoAcceptor;

    aput-object v1, v5, v0

    const-string/jumbo v0, "unbindLocalForwarding({} => {}) no mapping({}) or acceptor({})"

    invoke-interface {v4, v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_2
    :goto_0
    return-void
.end method
