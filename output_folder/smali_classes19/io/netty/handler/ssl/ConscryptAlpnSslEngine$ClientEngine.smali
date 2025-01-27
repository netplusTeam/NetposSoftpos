.class final Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;
.super Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.source "ConscryptAlpnSslEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientEngine"
.end annotation


# instance fields
.field private final protocolListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V
    .locals 2
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    .line 101
    invoke-interface {p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Ljava/util/List;Lio/netty/handler/ssl/ConscryptAlpnSslEngine$1;)V

    .line 103
    new-instance v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine$1;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine$1;-><init>(Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;)V

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setHandshakeListener(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/HandshakeListener;)V

    .line 110
    nop

    .line 111
    invoke-interface {p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocolListenerFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    move-result-object v0

    invoke-interface {p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;->newListener(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    move-result-object v0

    .line 110
    const-string v1, "protocolListener"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    iput-object v0, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;->protocolListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    .line 113
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;->selectProtocol()V

    return-void
.end method

.method private selectProtocol()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "protocol":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;->protocolListener:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    invoke-interface {v1, v0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;->selected(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    nop

    .line 122
    return-void

    .line 119
    :catchall_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v2

    throw v2
.end method
