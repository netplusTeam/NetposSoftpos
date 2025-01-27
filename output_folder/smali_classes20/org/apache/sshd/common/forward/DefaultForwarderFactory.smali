.class public Lorg/apache/sshd/common/forward/DefaultForwarderFactory;
.super Ljava/lang/Object;
.source "DefaultForwarderFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/forward/ForwardingFilterFactory;
.implements Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/forward/DefaultForwarderFactory;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwarderFactory$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/forward/DefaultForwarderFactory$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/forward/DefaultForwarderFactory;->INSTANCE:Lorg/apache/sshd/common/forward/DefaultForwarderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwarderFactory;->listeners:Ljava/util/Collection;

    .line 54
    const-class v1, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwarderFactory;->listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 55
    return-void
.end method


# virtual methods
.method public addPortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 64
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwarderFactory;->listeners:Ljava/util/Collection;

    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public create(Lorg/apache/sshd/common/session/ConnectionService;)Lorg/apache/sshd/common/forward/ForwardingFilter;
    .locals 1
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;

    .line 78
    new-instance v0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-direct {v0, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;-><init>(Lorg/apache/sshd/common/session/ConnectionService;)V

    .line 79
    .local v0, "forwarder":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/forward/ForwardingFilter;->addPortForwardingEventListenerManager(Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;)Z

    .line 80
    return-object v0
.end method

.method public getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwarderFactory;->listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    return-object v0
.end method

.method public removePortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 69
    if-nez p1, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwarderFactory;->listeners:Ljava/util/Collection;

    invoke-static {p1}, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method
