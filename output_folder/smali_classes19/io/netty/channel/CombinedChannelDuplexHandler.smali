.class public Lio/netty/channel/CombinedChannelDuplexHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "CombinedChannelDuplexHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lio/netty/channel/ChannelInboundHandler;",
        "O::",
        "Lio/netty/channel/ChannelOutboundHandler;",
        ">",
        "Lio/netty/channel/ChannelDuplexHandler;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile handlerAdded:Z

.field private inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

.field private inboundHandler:Lio/netty/channel/ChannelInboundHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

.field private outboundHandler:Lio/netty/channel/ChannelOutboundHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    nop

    .line 35
    const-class v0, Lio/netty/channel/CombinedChannelDuplexHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/CombinedChannelDuplexHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 49
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->ensureNotSharable()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    .local p1, "inboundHandler":Lio/netty/channel/ChannelInboundHandler;, "TI;"
    .local p2, "outboundHandler":Lio/netty/channel/ChannelOutboundHandler;, "TO;"
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->ensureNotSharable()V

    .line 58
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/CombinedChannelDuplexHandler;)Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/CombinedChannelDuplexHandler;

    .line 32
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/channel/CombinedChannelDuplexHandler;)Lio/netty/channel/ChannelOutboundHandler;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/CombinedChannelDuplexHandler;

    .line 32
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    return-object v0
.end method

.method static synthetic access$200()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 32
    sget-object v0, Lio/netty/channel/CombinedChannelDuplexHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method private checkAdded()V
    .locals 2

    .line 106
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-boolean v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->handlerAdded:Z

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler not added to pipeline yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    .local p1, "inboundHandler":Lio/netty/channel/ChannelInboundHandler;, "TI;"
    .local p2, "outboundHandler":Lio/netty/channel/ChannelOutboundHandler;, "TO;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    if-nez v0, :cond_2

    .line 82
    const-string v0, "inboundHandler"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v0, "outboundHandler"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    instance-of v0, p1, Lio/netty/channel/ChannelOutboundHandler;

    const-string v1, " to get combined."

    if-nez v0, :cond_1

    .line 90
    instance-of v0, p2, Lio/netty/channel/ChannelInboundHandler;

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outboundHandler must not implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lio/netty/channel/ChannelInboundHandler;

    .line 93
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inboundHandler must not implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lio/netty/channel/ChannelOutboundHandler;

    .line 88
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() can not be invoked if "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lio/netty/channel/CombinedChannelDuplexHandler;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was constructed with non-default constructor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 282
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0, p2, p3}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 210
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelInboundHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 220
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelInboundHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 250
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1, p2}, Lio/netty/channel/ChannelInboundHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 260
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelInboundHandler;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 265
    :goto_0
    return-void

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 190
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelInboundHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 200
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelInboundHandler;->channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    .line 205
    :goto_0
    return-void

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 270
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelInboundHandler;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 315
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1, p2}, Lio/netty/channel/ChannelOutboundHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 320
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 295
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1, p2, p3, p4}, Lio/netty/channel/ChannelOutboundHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0, p3, p4}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 300
    :goto_0
    return-void

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 324
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 325
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1, p2}, Lio/netty/channel/ChannelOutboundHandler;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 330
    :goto_0
    return-void

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 305
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1, p2}, Lio/netty/channel/ChannelOutboundHandler;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 310
    :goto_0
    return-void

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 230
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1, p2}, Lio/netty/channel/ChannelInboundHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 354
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 355
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelOutboundHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 360
    :goto_0
    return-void

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-direct {v0, p1, v1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelHandler;)V

    iput-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    .line 137
    new-instance v0, Lio/netty/channel/CombinedChannelDuplexHandler$1;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-direct {v0, p0, p1, v1}, Lio/netty/channel/CombinedChannelDuplexHandler$1;-><init>(Lio/netty/channel/CombinedChannelDuplexHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelHandler;)V

    iput-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->handlerAdded:Z

    .line 172
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelInboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelOutboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 175
    nop

    .line 176
    return-void

    .line 174
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v2, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelOutboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 175
    throw v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() must be invoked before being added to a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lio/netty/channel/ChannelPipeline;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " if "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lio/netty/channel/CombinedChannelDuplexHandler;

    .line 132
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was constructed with the default constructor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V

    .line 184
    throw v0
.end method

.method protected final inboundHandler()Lio/netty/channel/ChannelInboundHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    return-object v0
.end method

.method protected final init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    .local p1, "inboundHandler":Lio/netty/channel/ChannelInboundHandler;, "TI;"
    .local p2, "outboundHandler":Lio/netty/channel/ChannelOutboundHandler;, "TO;"
    invoke-direct {p0, p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler;->validate(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 71
    iput-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    .line 72
    iput-object p2, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    .line 73
    return-void
.end method

.method protected final outboundHandler()Lio/netty/channel/ChannelOutboundHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    return-object v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 335
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelOutboundHandler;->read(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final removeInboundHandler()V
    .locals 1

    .line 115
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->checkAdded()V

    .line 116
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V

    .line 117
    return-void
.end method

.method public final removeOutboundHandler()V
    .locals 1

    .line 123
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->checkAdded()V

    .line 124
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V

    .line 125
    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 240
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1, p2}, Lio/netty/channel/ChannelInboundHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 345
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean v0, v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0, p2, p3}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 350
    :goto_0
    return-void

    .line 344
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
