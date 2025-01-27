.class public interface abstract Lorg/apache/sshd/common/session/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lorg/apache/sshd/common/session/SessionContext;
.implements Lorg/apache/sshd/common/auth/MutableUserHolder;
.implements Lorg/apache/sshd/common/kex/KexFactoryManager;
.implements Lorg/apache/sshd/common/session/SessionListenerManager;
.implements Lorg/apache/sshd/common/session/ReservedSessionMessagesManager;
.implements Lorg/apache/sshd/common/session/SessionDisconnectHandlerManager;
.implements Lorg/apache/sshd/common/channel/ChannelListenerManager;
.implements Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;
.implements Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;
.implements Lorg/apache/sshd/common/session/UnknownChannelReferenceHandlerManager;
.implements Lorg/apache/sshd/common/FactoryManagerHolder;
.implements Lorg/apache/sshd/common/forward/PortForwardingInformationProvider;
.implements Lorg/apache/sshd/common/io/PacketWriter;


# direct methods
.method public static resolveAttribute(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 2
    .param p0, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/session/Session;",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 275
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    const-string v0, "No key"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    if-nez p0, :cond_0

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/session/Session;->getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/sshd/common/FactoryManager;->resolveAttribute(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 1
    .param p1, "cmd"    # B

    .line 74
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;
.end method

.method public abstract disconnect(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract exceptionCaught(Ljava/lang/Throwable;)V
.end method

.method public abstract getAuthTimeout()J
.end method

.method public abstract getAuthTimeoutStart()J
.end method

.method public abstract getIdleTimeout()J
.end method

.method public abstract getIdleTimeoutStart()J
.end method

.method public abstract getIoSession()Lorg/apache/sshd/common/io/IoSession;
.end method

.method public abstract getKex()Lorg/apache/sshd/common/kex/KeyExchange;
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 2

    .line 184
    invoke-interface {p0}, Lorg/apache/sshd/common/session/Session;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v0

    .line 185
    .local v0, "s":Lorg/apache/sshd/common/io/IoSession;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 2

    .line 190
    invoke-interface {p0}, Lorg/apache/sshd/common/session/Session;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v0

    .line 191
    .local v0, "s":Lorg/apache/sshd/common/io/IoSession;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public abstract getService(Ljava/lang/Class;)Lorg/apache/sshd/common/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getTimeoutStatus()Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
.end method

.method public abstract prepareBuffer(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
.end method

.method public abstract reExchangeKeys()Lorg/apache/sshd/common/future/KeyExchangeFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract request(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;JLjava/util/concurrent/TimeUnit;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract resetAuthTimeout()J
.end method

.method public abstract resetIdleTimeout()J
.end method

.method public resolveAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 261
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/session/Session;->resolveAttribute(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract sendDebugMessage(ZLjava/lang/Object;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract sendIgnoreMessage([B)Lorg/apache/sshd/common/io/IoWriteFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAuthenticated()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startService(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;JLjava/util/concurrent/TimeUnit;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
