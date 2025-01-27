.class public Lio/netty/handler/codec/http/HttpClientUpgradeHandler;
.super Lio/netty/handler/codec/http/HttpObjectAggregator;
.source "HttpClientUpgradeHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;,
        Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;,
        Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sourceCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;

.field private final upgradeCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;

.field private upgradeRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 39
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;I)V
    .locals 1
    .param p1, "sourceCodec"    # Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;
    .param p2, "upgradeCodec"    # Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;
    .param p3, "maxContentLength"    # I

    .line 118
    invoke-direct {p0, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    .line 119
    const-string v0, "sourceCodec"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->sourceCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;

    .line 120
    const-string v0, "upgradeCodec"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->upgradeCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;

    .line 121
    return-void
.end method

.method private static removeThisHandler(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 254
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    .line 255
    return-void
.end method

.method private setUpgradeRequestHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 262
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    iget-object v2, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->upgradeCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;->protocol()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 265
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 266
    .local v0, "connectionParts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->upgradeCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;

    invoke-interface {v1, p1, p2}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;->setUpgradeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 271
    .local v3, "part":Ljava/lang/CharSequence;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 272
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    .end local v3    # "part":Ljava/lang/CharSequence;
    goto :goto_0

    .line 274
    :cond_0
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 275
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 276
    return-void
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 126
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 142
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 132
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/HttpObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/HttpObject;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 189
    .local v0, "response":Lio/netty/handler/codec/http/FullHttpResponse;
    :try_start_0
    iget-boolean v1, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->upgradeRequested:Z

    if-eqz v1, :cond_6

    .line 193
    instance-of v1, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v1, :cond_0

    .line 194
    move-object v1, p2

    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    .line 195
    .local v1, "rep":Lio/netty/handler/codec/http/HttpResponse;
    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpResponseStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    sget-object v2, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_REJECTED:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 201
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->removeThisHandler(Lio/netty/channel/ChannelHandlerContext;)V

    .line 202
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 203
    return-void

    .line 207
    .end local v1    # "rep":Lio/netty/handler/codec/http/HttpResponse;
    :cond_0
    instance-of v1, p2, Lio/netty/handler/codec/http/FullHttpResponse;

    if-eqz v1, :cond_1

    .line 208
    move-object v1, p2

    check-cast v1, Lio/netty/handler/codec/http/FullHttpResponse;

    move-object v0, v1

    .line 210
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    .line 211
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;->decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V

    .line 215
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    return-void

    .line 220
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 221
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/FullHttpResponse;

    move-object v0, v1

    .line 224
    :goto_0
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "upgradeHeader":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->upgradeCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;->protocol()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 226
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switching Protocols response with unexpected UPGRADE protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "response":Lio/netty/handler/codec/http/FullHttpResponse;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Lio/netty/handler/codec/http/HttpObject;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v2

    .line 231
    .restart local v0    # "response":Lio/netty/handler/codec/http/FullHttpResponse;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Lio/netty/handler/codec/http/HttpObject;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    :goto_1
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->sourceCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;

    invoke-interface {v2, p1}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;->prepareUpgradeFrom(Lio/netty/channel/ChannelHandlerContext;)V

    .line 232
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->upgradeCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;

    invoke-interface {v2, p1, v0}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;->upgradeTo(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpResponse;)V

    .line 235
    sget-object v2, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_SUCCESSFUL:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 239
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->sourceCodec:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;

    invoke-interface {v2, p1}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;->upgradeFrom(Lio/netty/channel/ChannelHandlerContext;)V

    .line 243
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 244
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 245
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->removeThisHandler(Lio/netty/channel/ChannelHandlerContext;)V

    .line 250
    .end local v1    # "upgradeHeader":Ljava/lang/CharSequence;
    goto :goto_2

    .line 220
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "response":Lio/netty/handler/codec/http/FullHttpResponse;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Lio/netty/handler/codec/http/HttpObject;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1

    .line 190
    .restart local v0    # "response":Lio/netty/handler/codec/http/FullHttpResponse;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Lio/netty/handler/codec/http/HttpObject;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Read HTTP response without requesting protocol switch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "response":Lio/netty/handler/codec/http/FullHttpResponse;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Lio/netty/handler/codec/http/HttpObject;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .restart local v0    # "response":Lio/netty/handler/codec/http/FullHttpResponse;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Lio/netty/handler/codec/http/HttpObject;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    .line 247
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 249
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->removeThisHandler(Lio/netty/channel/ChannelHandlerContext;)V

    .line 251
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    check-cast p2, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V

    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 147
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 137
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 182
    return-void
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 152
    return-void
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

    .line 157
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-nez v0, :cond_0

    .line 158
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 159
    return-void

    .line 162
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->upgradeRequested:Z

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to write HTTP request with upgrade in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 165
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->upgradeRequested:Z

    .line 169
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;->setUpgradeRequestHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V

    .line 172
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 175
    sget-object v0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_ISSUED:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 177
    return-void
.end method
