.class final Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$AlpnWrapper;
.super Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;
.source "JdkAlpnApplicationProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlpnWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$1;

    .line 129
    invoke-direct {p0}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$AlpnWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;
    .locals 3
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .param p4, "isServer"    # Z

    .line 133
    invoke-static {p1}, Lio/netty/handler/ssl/Conscrypt;->isEngineSupported(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    if-eqz p4, :cond_0

    invoke-static {p1, p2, p3}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->newServerEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p1, p2, p3}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->newClientEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 137
    :cond_1
    invoke-static {}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;->jdkAlpnSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Lio/netty/handler/ssl/Java9SslEngine;

    invoke-direct {v0, p1, p3, p4}, Lio/netty/handler/ssl/Java9SslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)V

    return-object v0

    .line 140
    :cond_2
    invoke-static {}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    if-eqz p4, :cond_3

    invoke-static {p1, p3}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->newServerEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/JettyAlpnSslEngine;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_3
    invoke-static {p1, p3}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->newClientEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/JettyAlpnSslEngine;

    move-result-object v0

    .line 141
    :goto_1
    return-object v0

    .line 144
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to wrap SSLEngine of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
