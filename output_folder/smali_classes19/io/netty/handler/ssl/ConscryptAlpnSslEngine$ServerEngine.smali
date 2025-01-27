.class final Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;
.super Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.source "ConscryptAlpnSslEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerEngine"
.end annotation


# instance fields
.field private final protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V
    .locals 3
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    .line 130
    invoke-interface {p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Ljava/util/List;Lio/netty/handler/ssl/ConscryptAlpnSslEngine$1;)V

    .line 133
    new-instance v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine$1;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine$1;-><init>(Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;)V

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setHandshakeListener(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/HandshakeListener;)V

    .line 140
    invoke-interface {p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocolSelectorFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    .line 142
    invoke-interface {p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    invoke-interface {v0, p0, v1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;->newSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    move-result-object v0

    .line 140
    const-string v1, "protocolSelector"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    iput-object v0, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;->protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    .line 144
    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;->selectProtocol()V

    return-void
.end method

.method private selectProtocol()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "protocol":Ljava/lang/String;
    iget-object v1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;->protocolSelector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 149
    :goto_0
    invoke-interface {v1, v2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->select(Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    nop

    .line 154
    .end local v0    # "protocol":Ljava/lang/String;
    return-void

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1
.end method
