.class final Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;
.super Lio/netty/handler/ssl/JettyAlpnSslEngine;
.source "JettyAlpnSslEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/JettyAlpnSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerEngine"
.end annotation


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V
    .locals 3
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/JettyAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JettyAlpnSslEngine$1;)V

    .line 118
    const-string v0, "applicationNegotiator"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocolSelectorFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    .line 120
    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p0, v1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;->newSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    move-result-object v0

    .line 119
    const-string v1, "protocolSelector"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    .line 122
    .local v0, "protocolSelector":Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;
    new-instance v1, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine$1;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine$1;-><init>(Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;)V

    invoke-static {p1, v1}, Lorg/eclipse/jetty/alpn/ALPN;->put(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/alpn/ALPN$Provider;)V

    .line 137
    return-void
.end method


# virtual methods
.method public closeInbound()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/alpn/ALPN;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/alpn/ALPN$Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-super {p0}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->closeInbound()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->closeInbound()V

    .line 145
    throw v0
.end method

.method public closeOutbound()V
    .locals 1

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/alpn/ALPN;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/alpn/ALPN$Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-super {p0}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->closeOutbound()V

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->closeOutbound()V

    .line 154
    throw v0
.end method
