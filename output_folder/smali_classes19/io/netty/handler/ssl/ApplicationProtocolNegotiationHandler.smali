.class public abstract Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "ApplicationProtocolNegotiationHandler.java"


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final fallbackProtocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;

    .line 65
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fallbackProtocol"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 76
    const-string v0, "fallbackProtocol"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fallbackProtocol:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method protected abstract configurePipeline(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const-string v2, "{} Failed to select the application-level protocol:"

    invoke-interface {v0, v2, v1, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 130
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 131
    return-void
.end method

.method protected handshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const-string v2, "{} TLS handshake failed:"

    invoke-interface {v0, v2, v1, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 124
    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    instance-of v0, p2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-eqz v0, :cond_5

    .line 84
    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    .line 85
    .local v0, "handshakeEvent":Lio/netty/handler/ssl/SslHandshakeCompletionEvent;
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-class v2, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/SslHandler;

    .line 87
    .local v1, "sslHandler":Lio/netty/handler/ssl/SslHandler;
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v1}, Lio/netty/handler/ssl/SslHandler;->applicationProtocol()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "protocol":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->fallbackProtocol:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, v3}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->configurePipeline(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 93
    .end local v1    # "sslHandler":Lio/netty/handler/ssl/SslHandler;
    .end local v2    # "protocol":Ljava/lang/String;
    goto :goto_1

    .line 88
    .restart local v1    # "sslHandler":Lio/netty/handler/ssl/SslHandler;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot find an SslHandler in the pipeline (required for application-level protocol negotiation)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "evt":Ljava/lang/Object;
    throw v2

    .line 94
    .end local v1    # "sslHandler":Lio/netty/handler/ssl/SslHandler;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "evt":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->handshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v0    # "handshakeEvent":Lio/netty/handler/ssl/SslHandshakeCompletionEvent;
    :goto_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 100
    .local v0, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 101
    goto :goto_2

    .line 96
    .end local v0    # "pipeline":Lio/netty/channel/ChannelPipeline;
    :catchall_0
    move-exception v0

    .line 97
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 100
    .local v0, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 101
    :goto_2
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 103
    .end local v0    # "pipeline":Lio/netty/channel/ChannelPipeline;
    :cond_3
    goto :goto_3

    .line 99
    :catchall_1
    move-exception v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 100
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 101
    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 103
    .end local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    :cond_4
    throw v0

    .line 105
    :cond_5
    :goto_3
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 106
    return-void
.end method
