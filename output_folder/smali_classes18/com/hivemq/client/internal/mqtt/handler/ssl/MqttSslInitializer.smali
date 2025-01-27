.class public final Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer;
.super Ljava/lang/Object;
.source "MqttSslInitializer.java"


# static fields
.field private static final SSL_HANDLER_NAME:Ljava/lang/String; = "ssl"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSslContext(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;)Lio/netty/handler/ssl/SslContext;
    .locals 4
    .param p0, "sslConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawProtocols()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 95
    .local v0, "protocols":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Ljava/lang/String;>;"
    invoke-static {}, Lio/netty/handler/ssl/SslContextBuilder;->forClient()Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager(Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljavax/net/ssl/KeyManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 98
    invoke-interface {v0, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/SslContextBuilder;->protocols([Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawCipherSuites()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v2

    sget-object v3, Lio/netty/handler/ssl/SupportedCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/SupportedCipherSuiteFilter;

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/ssl/SslContextBuilder;->ciphers(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lio/netty/handler/ssl/SslContextBuilder;->build()Lio/netty/handler/ssl/SslContext;

    move-result-object v1

    .line 95
    return-object v1
.end method

.method public static initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 13
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "sslConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lio/netty/channel/Channel;>;"
    .local p4, "onError":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v8

    .line 56
    .local v8, "serverAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentSslContext()Lio/netty/handler/ssl/SslContext;

    move-result-object v0

    .line 57
    .local v0, "sslContext":Lio/netty/handler/ssl/SslContext;
    if-nez v0, :cond_0

    .line 58
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer;->createSslContext(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;)Lio/netty/handler/ssl/SslContext;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v1

    .line 59
    move-object v9, p1

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setCurrentSslContext(Lio/netty/handler/ssl/SslContext;)V

    goto :goto_0

    .line 57
    :cond_0
    move-object v9, p1

    .line 61
    :goto_0
    invoke-interface {p0}, Lio/netty/channel/Channel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lio/netty/handler/ssl/SslContext;->newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Lio/netty/handler/ssl/SslHandler;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 65
    .local v0, "sslHandler":Lio/netty/handler/ssl/SslHandler;
    nop

    .line 67
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getHandshakeTimeoutMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeTimeoutMillis(J)V

    .line 69
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v10

    .line 70
    .local v10, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    if-nez v10, :cond_1

    .line 71
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    .line 72
    .local v1, "sslParameters":Ljavax/net/ssl/SSLParameters;
    const-string v2, "HTTPS"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 76
    .end local v1    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    :cond_1
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->handshakeFuture()Lio/netty/util/concurrent/Future;

    move-result-object v11

    new-instance v12, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;

    move-object v1, v12

    move-object v2, v10

    move-object v3, v8

    move-object v4, v0

    move-object/from16 v5, p4

    move-object v6, p0

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;-><init>(Ljavax/net/ssl/HostnameVerifier;Ljava/net/InetSocketAddress;Lio/netty/handler/ssl/SslHandler;Ljava/util/function/BiConsumer;Lio/netty/channel/Channel;Ljava/util/function/Consumer;)V

    invoke-interface {v11, v12}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 89
    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-string/jumbo v2, "ssl"

    invoke-interface {v1, v2, v0}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 90
    return-void

    .line 62
    .end local v0    # "sslHandler":Lio/netty/handler/ssl/SslHandler;
    .end local v10    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v9, p1

    .line 63
    .local v0, "t":Ljava/lang/Throwable;
    :goto_1
    move-object v1, p0

    move-object/from16 v2, p4

    invoke-interface {v2, p0, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method static synthetic lambda$initChannel$0(Ljavax/net/ssl/HostnameVerifier;Ljava/net/InetSocketAddress;Lio/netty/handler/ssl/SslHandler;Ljava/util/function/BiConsumer;Lio/netty/channel/Channel;Ljava/util/function/Consumer;Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p0, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p1, "serverAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "sslHandler"    # Lio/netty/handler/ssl/SslHandler;
    .param p3, "onError"    # Ljava/util/function/BiConsumer;
    .param p4, "channel"    # Lio/netty/channel/Channel;
    .param p5, "onSuccess"    # Ljava/util/function/Consumer;
    .param p6, "future"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-interface {p6}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Hostname verification failed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p4, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {p5, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {p6}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    :goto_0
    return-void
.end method
