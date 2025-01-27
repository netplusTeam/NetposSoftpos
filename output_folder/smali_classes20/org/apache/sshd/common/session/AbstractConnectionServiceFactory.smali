.class public abstract Lorg/apache/sshd/common/session/AbstractConnectionServiceFactory;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractConnectionServiceFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;


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
.method protected constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/AbstractConnectionServiceFactory;->listeners:Ljava/util/Collection;

    .line 39
    const-class v1, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    iput-object v0, p0, Lorg/apache/sshd/common/session/AbstractConnectionServiceFactory;->listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 40
    return-void
.end method


# virtual methods
.method public addPortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/session/AbstractConnectionServiceFactory;->listeners:Ljava/util/Collection;

    const-string v1, "No listener to add"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public getPortForwardingEventListenerProxy()Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/sshd/common/session/AbstractConnectionServiceFactory;->listenerProxy:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    return-object v0
.end method

.method public removePortForwardingEventListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    .line 54
    if-nez p1, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/AbstractConnectionServiceFactory;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method
