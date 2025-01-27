.class public abstract Lorg/apache/sshd/common/io/nio2/Nio2Service;
.super Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;
.source "Nio2Service.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoService;
.implements Lorg/apache/sshd/common/FactoryManagerHolder;


# static fields
.field public static final CONFIGURABLE_OPTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/net/SocketOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final disposing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

.field private final group:Ljava/nio/channels/AsynchronousChannelGroup;

.field private final handler:Lorg/apache/sshd/common/io/IoHandler;

.field private final manager:Lorg/apache/sshd/common/FactoryManager;

.field protected final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/sshd/common/io/IoSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/AbstractMap$SimpleImmutableEntry<Ljava/net/SocketOption<*>;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "socket-keepalive"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "socket-linger"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "socket-rcvbuf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "socket-reuseaddr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "socket-sndbuf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v2, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v2, "tcp-nodelay"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/apache/sshd/common/io/nio2/Nio2Service;->CONFIGURABLE_OPTIONS:Ljava/util/Map;

    .line 63
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/AbstractMap$SimpleImmutableEntry<Ljava/net/SocketOption<*>;Ljava/lang/Object;>;>;"
    return-void
.end method

.method protected constructor <init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousChannelGroup;)V
    .locals 3
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p2, "handler"    # Lorg/apache/sshd/common/io/IoHandler;
    .param p3, "group"    # Ljava/nio/channels/AsynchronousChannelGroup;

    .line 72
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->disposing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Creating {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_0
    const-string v0, "No factory manager provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->manager:Lorg/apache/sshd/common/FactoryManager;

    .line 77
    const-string v0, "No I/O handler provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/IoHandler;

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->handler:Lorg/apache/sshd/common/io/IoHandler;

    .line 78
    const-string v0, "No async. channel group provided"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/AsynchronousChannelGroup;

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->group:Ljava/nio/channels/AsynchronousChannelGroup;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->sessions:Ljava/util/Map;

    .line 80
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 7

    .line 107
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->disposing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    const-string v2, "dispose({}) already disposing"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Service;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/Closeable;->getMaxCloseWaitTime(Lorg/apache/sshd/common/PropertyResolver;)J

    move-result-wide v1

    .line 112
    .local v1, "maxWait":J
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Service;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lorg/apache/sshd/common/future/CloseFuture;->await(J)Z

    move-result v3

    .line 113
    .local v3, "successful":Z
    if-eqz v3, :cond_1

    .line 125
    .end local v1    # "maxWait":J
    .end local v3    # "successful":Z
    goto :goto_0

    .line 114
    .restart local v1    # "maxWait":J
    .restart local v3    # "successful":Z
    :cond_1
    new-instance v4, Ljava/net/SocketTimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to receive closure confirmation within "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " millis"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "maxWait":J
    .end local v3    # "successful":Z
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 118
    const-string v0, "dispose({}) {} while stopping service: {}"

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispose("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Stop exception details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    return-void
.end method

.method protected getChannelGroup()Ljava/nio/channels/AsynchronousChannelGroup;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->group:Ljava/nio/channels/AsynchronousChannelGroup;

    return-object v0
.end method

.method public getFactoryManager()Lorg/apache/sshd/common/FactoryManager;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->manager:Lorg/apache/sshd/common/FactoryManager;

    return-object v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 3

    .line 130
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Service;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->parallel(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method public getIoHandler()Lorg/apache/sshd/common/io/IoHandler;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->handler:Lorg/apache/sshd/common/io/IoHandler;

    return-object v0
.end method

.method public getIoServiceEventListener()Lorg/apache/sshd/common/io/IoServiceEventListener;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

    return-object v0
.end method

.method public getManagedSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/sshd/common/io/IoSession;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->sessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public sessionClosed(Lorg/apache/sshd/common/io/nio2/Nio2Session;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/io/nio2/Nio2Session;

    .line 141
    invoke-virtual {p1}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Service;->unmapSession(Ljava/lang/Long;)V

    .line 142
    return-void
.end method

.method public setIoServiceEventListener(Lorg/apache/sshd/common/io/IoServiceEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/io/IoServiceEventListener;

    .line 89
    iput-object p1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

    .line 90
    return-void
.end method

.method protected setOption(Ljava/nio/channels/NetworkChannel;Ljava/lang/String;Ljava/net/SocketOption;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "socket"    # Ljava/nio/channels/NetworkChannel;
    .param p2, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/NetworkChannel;",
            "Ljava/lang/String;",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    .local p3, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p4, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Service;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    .line 175
    .local v0, "manager":Lorg/apache/sshd/common/PropertyResolver;
    invoke-interface {v0, p2}, Lorg/apache/sshd/common/PropertyResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "valStr":Ljava/lang/String;
    move-object v2, p4

    .line 177
    .local v2, "val":Ljava/lang/Object;, "TT;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "="

    if-nez v3, :cond_2

    .line 178
    invoke-interface {p3}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v3

    .line 179
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v5, Ljava/lang/Integer;

    if-ne v3, v5, :cond_0

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 181
    :cond_0
    const-class v5, Ljava/lang/Boolean;

    if-ne v3, v5, :cond_1

    .line 182
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 184
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported socket option type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_2
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 189
    return v3

    .line 192
    :cond_3
    invoke-interface {p1}, Ljava/nio/channels/NetworkChannel;->supportedOptions()Ljava/util/Set;

    move-result-object v5

    .line 193
    .local v5, "supported":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/net/SocketOption<*>;>;"
    invoke-static {v5}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-nez v6, :cond_6

    invoke-interface {v5, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 201
    :cond_4
    :try_start_0
    invoke-interface {p1, p3, v2}, Ljava/nio/channels/NetworkChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;

    .line 202
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 203
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    const-string v10, "setOption({})[{}] from property={}"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p3, v8, v3

    aput-object v2, v8, v9

    aput-object p2, v8, v7

    invoke-interface {v6, v10, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_5
    return v9

    .line 206
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 207
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v7, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to set socket option "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " using property "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 210
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-interface {v7, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 211
    return v3

    .line 194
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 195
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p3, v6, v3

    aput-object p2, v6, v9

    aput-object v2, v6, v7

    const-string v7, "Unsupported socket option ({}) to set using {}={}"

    invoke-interface {v4, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_7
    return v3
.end method

.method protected setSocketOptions(Ljava/nio/channels/NetworkChannel;)Ljava/nio/channels/NetworkChannel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/nio/channels/NetworkChannel;",
            ">(TS;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    .local p1, "socket":Ljava/nio/channels/NetworkChannel;, "TS;"
    invoke-interface {p1}, Ljava/nio/channels/NetworkChannel;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    .line 156
    .local v0, "supported":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/net/SocketOption<*>;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    return-object p1

    .line 160
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/io/nio2/Nio2Service;->CONFIGURABLE_OPTIONS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 161
    .local v2, "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/util/Map$Entry<Ljava/net/SocketOption<*>;*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, "property":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 164
    .local v4, "defConfig":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/SocketOption<*>;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/SocketOption;

    .line 165
    .local v5, "option":Ljava/net/SocketOption;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p1, v3, v5, v6}, Lorg/apache/sshd/common/io/nio2/Nio2Service;->setOption(Ljava/nio/channels/NetworkChannel;Ljava/lang/String;Ljava/net/SocketOption;Ljava/lang/Object;)Z

    .line 166
    .end local v2    # "ce":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/util/Map$Entry<Ljava/net/SocketOption<*>;*>;>;"
    .end local v3    # "property":Ljava/lang/String;
    .end local v4    # "defConfig":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/SocketOption<*>;*>;"
    .end local v5    # "option":Ljava/net/SocketOption;
    goto :goto_0

    .line 168
    :cond_1
    return-object p1
.end method

.method protected unmapSession(Ljava/lang/Long;)V
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/Long;

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/IoSession;

    .line 147
    .local v0, "ioSession":Lorg/apache/sshd/common/io/IoSession;
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Service;->log:Lorg/slf4j/Logger;

    const-string/jumbo v2, "unmapSession(id={}): {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .end local v0    # "ioSession":Lorg/apache/sshd/common/io/IoSession;
    :cond_0
    return-void
.end method
