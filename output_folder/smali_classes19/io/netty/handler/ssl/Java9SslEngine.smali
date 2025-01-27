.class final Lio/netty/handler/ssl/Java9SslEngine;
.super Lio/netty/handler/ssl/JdkSslEngine;
.source "Java9SslEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final alpnSelector:Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;

.field private final selectionListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 34
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)V
    .locals 4
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .param p3, "isServer"    # Z

    .line 83
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/JdkSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;)V

    .line 84
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 85
    iput-object v0, p0, Lio/netty/handler/ssl/Java9SslEngine;->selectionListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    .line 86
    new-instance v0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;

    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocolSelectorFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    .line 87
    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p0, v2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;->newSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;-><init>(Lio/netty/handler/ssl/Java9SslEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;)V

    iput-object v0, p0, Lio/netty/handler/ssl/Java9SslEngine;->alpnSelector:Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;

    .line 88
    invoke-static {p1, v0}, Lio/netty/handler/ssl/Java9SslUtils;->setHandshakeApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/function/BiFunction;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocolListenerFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    move-result-object v1

    .line 91
    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;->newListener(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/Java9SslEngine;->selectionListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    .line 92
    iput-object v0, p0, Lio/netty/handler/ssl/Java9SslEngine;->alpnSelector:Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;

    .line 93
    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lio/netty/handler/ssl/Java9SslUtils;->setApplicationProtocols(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)V

    .line 95
    :goto_0
    return-void
.end method

.method private verifyProtocolSelection(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "result"    # Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_4

    .line 99
    iget-object v0, p0, Lio/netty/handler/ssl/Java9SslEngine;->alpnSelector:Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;

    if-nez v0, :cond_2

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/Java9SslEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "protocol":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lio/netty/handler/ssl/Java9SslEngine;->selectionListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    invoke-interface {v1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;->unsupported()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/Java9SslEngine;->selectionListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    invoke-interface {v1, v0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;->selected(Ljava/lang/String;)V

    .line 115
    .end local v0    # "protocol":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 103
    .restart local v0    # "protocol":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "result":Ljavax/net/ssl/SSLEngineResult;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v0    # "protocol":Ljava/lang/String;
    .restart local p1    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1

    .line 117
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lio/netty/handler/ssl/Java9SslEngine;->selectionListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    if-nez v1, :cond_3

    .line 118
    invoke-virtual {v0}, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->checkUnsupported()V

    goto :goto_1

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 121
    :cond_4
    :goto_1
    return-object p1
.end method


# virtual methods
.method public getApplicationProtocol()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lio/netty/handler/ssl/Java9SslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/Java9SslUtils;->getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lio/netty/handler/ssl/Java9SslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/Java9SslUtils;->getHandshakeApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeApplicationProtocolSelector()Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lio/netty/handler/ssl/Java9SslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/Java9SslUtils;->getHandshakeApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;)Ljava/util/function/BiFunction;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedApplicationProtocol()Ljava/lang/String;
    .locals 2

    .line 161
    invoke-virtual {p0}, Lio/netty/handler/ssl/Java9SslEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "protocol":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 165
    :cond_1
    return-object v0
.end method

.method public setHandshakeApplicationProtocolSelector(Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLEngine;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lio/netty/handler/ssl/Java9SslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/handler/ssl/Java9SslUtils;->setHandshakeApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/function/BiFunction;)V

    .line 180
    return-void
.end method

.method setNegotiatedApplicationProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationProtocol"    # Ljava/lang/String;

    .line 157
    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 141
    invoke-super {p0, p1, p2}, Lio/netty/handler/ssl/JdkSslEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/Java9SslEngine;->verifyProtocolSelection(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 146
    invoke-super {p0, p1, p2}, Lio/netty/handler/ssl/JdkSslEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/Java9SslEngine;->verifyProtocolSelection(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/ssl/JdkSslEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/Java9SslEngine;->verifyProtocolSelection(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 126
    invoke-super {p0, p1, p2}, Lio/netty/handler/ssl/JdkSslEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/Java9SslEngine;->verifyProtocolSelection(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/ssl/JdkSslEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/Java9SslEngine;->verifyProtocolSelection(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 131
    invoke-super {p0, p1, p2}, Lio/netty/handler/ssl/JdkSslEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/Java9SslEngine;->verifyProtocolSelection(Ljavax/net/ssl/SSLEngineResult;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method
