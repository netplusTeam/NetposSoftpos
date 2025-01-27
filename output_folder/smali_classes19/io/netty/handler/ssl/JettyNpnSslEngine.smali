.class final Lio/netty/handler/ssl/JettyNpnSslEngine;
.super Lio/netty/handler/ssl/JdkSslEngine;
.source "JettyNpnSslEngine.java"


# static fields
.field private static available:Z


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)V
    .locals 3
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .param p3, "server"    # Z

    .line 56
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/JdkSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;)V

    .line 57
    const-string v0, "applicationNegotiator"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    nop

    .line 61
    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocolListenerFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListenerFactory;->newListener(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    move-result-object v0

    .line 60
    const-string v1, "protocolListener"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;

    .line 63
    .local v0, "protocolListener":Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;
    new-instance v1, Lio/netty/handler/ssl/JettyNpnSslEngine$1;

    invoke-direct {v1, p0, v0, p2}, Lio/netty/handler/ssl/JettyNpnSslEngine$1;-><init>(Lio/netty/handler/ssl/JettyNpnSslEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V

    invoke-static {p1, v1}, Lorg/eclipse/jetty/npn/NextProtoNego;->put(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/npn/NextProtoNego$Provider;)V

    .line 83
    .end local v0    # "protocolListener":Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectionListener;
    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocolSelectorFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    .line 85
    invoke-interface {p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p0, v1}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelectorFactory;->newSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    move-result-object v0

    .line 84
    const-string v1, "protocolSelector"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    .line 87
    .local v0, "protocolSelector":Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;
    new-instance v1, Lio/netty/handler/ssl/JettyNpnSslEngine$2;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/ssl/JettyNpnSslEngine$2;-><init>(Lio/netty/handler/ssl/JettyNpnSslEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;)V

    invoke-static {p1, v1}, Lorg/eclipse/jetty/npn/NextProtoNego;->put(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/npn/NextProtoNego$Provider;)V

    .line 109
    .end local v0    # "protocolSelector":Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;
    :goto_0
    return-void
.end method

.method static isAvailable()Z
    .locals 1

    .line 38
    invoke-static {}, Lio/netty/handler/ssl/JettyNpnSslEngine;->updateAvailability()V

    .line 39
    sget-boolean v0, Lio/netty/handler/ssl/JettyNpnSslEngine;->available:Z

    return v0
.end method

.method private static updateAvailability()V
    .locals 3

    .line 43
    sget-boolean v0, Lio/netty/handler/ssl/JettyNpnSslEngine;->available:Z

    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 48
    :cond_0
    :try_start_0
    const-string v0, "sun.security.ssl.NextProtoNegoExtension"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 49
    sput-boolean v2, Lio/netty/handler/ssl/JettyNpnSslEngine;->available:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 53
    :goto_0
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

    .line 113
    invoke-virtual {p0}, Lio/netty/handler/ssl/JettyNpnSslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/npn/NextProtoNego;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/npn/NextProtoNego$Provider;

    .line 114
    invoke-super {p0}, Lio/netty/handler/ssl/JdkSslEngine;->closeInbound()V

    .line 115
    return-void
.end method

.method public closeOutbound()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lio/netty/handler/ssl/JettyNpnSslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/npn/NextProtoNego;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/npn/NextProtoNego$Provider;

    .line 120
    invoke-super {p0}, Lio/netty/handler/ssl/JdkSslEngine;->closeOutbound()V

    .line 121
    return-void
.end method
