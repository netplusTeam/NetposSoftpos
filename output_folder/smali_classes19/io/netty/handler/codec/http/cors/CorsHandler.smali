.class public Lio/netty/handler/codec/http/cors/CorsHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "CorsHandler.java"


# static fields
.field private static final ANY_ORIGIN:Ljava/lang/String; = "*"

.field private static final NULL_ORIGIN:Ljava/lang/String; = "null"

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private config:Lio/netty/handler/codec/http/cors/CorsConfig;

.field private final configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/cors/CorsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private isShortCircuit:Z

.field private request:Lio/netty/handler/codec/http/HttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lio/netty/handler/codec/http/cors/CorsHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/cors/CorsHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/cors/CorsConfig;)V
    .locals 2
    .param p1, "config"    # Lio/netty/handler/codec/http/cors/CorsConfig;

    .line 64
    const-string v0, "config"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/cors/CorsConfig;->isShortCircuit()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http/cors/CorsHandler;-><init>(Ljava/util/List;Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isShortCircuit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/cors/CorsConfig;",
            ">;Z)V"
        }
    .end annotation

    .line 74
    .local p1, "configList":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/cors/CorsConfig;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 75
    const-string v0, "configList"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNonEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 76
    iput-object p1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->configList:Ljava/util/List;

    .line 77
    iput-boolean p2, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->isShortCircuit:Z

    .line 78
    return-void
.end method

.method private echoRequestOrigin(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 166
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setOrigin(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private static forbidden(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 5
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 231
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    .line 232
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    .line 233
    .local v0, "response":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->ZERO:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 234
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 235
    invoke-static {p0, p1, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->respond(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpResponse;)V

    .line 236
    return-void
.end method

.method private getForOrigin(Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfig;
    .locals 3
    .param p1, "requestOrigin"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/cors/CorsConfig;

    .line 126
    .local v1, "corsConfig":Lio/netty/handler/codec/http/cors/CorsConfig;
    invoke-virtual {v1}, Lio/netty/handler/codec/http/cors/CorsConfig;->isAnyOriginSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    return-object v1

    .line 129
    :cond_0
    invoke-virtual {v1}, Lio/netty/handler/codec/http/cors/CorsConfig;->origins()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    return-object v1

    .line 132
    :cond_1
    invoke-virtual {v1}, Lio/netty/handler/codec/http/cors/CorsConfig;->isNullOriginAllowed()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 135
    .end local v1    # "corsConfig":Lio/netty/handler/codec/http/cors/CorsConfig;
    :cond_2
    goto :goto_0

    .line 133
    .restart local v1    # "corsConfig":Lio/netty/handler/codec/http/cors/CorsConfig;
    :cond_3
    :goto_1
    return-object v1

    .line 136
    .end local v1    # "corsConfig":Lio/netty/handler/codec/http/cors/CorsConfig;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private handlePreflight(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 99
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;ZZ)V

    .line 100
    .local v0, "response":Lio/netty/handler/codec/http/HttpResponse;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setOrigin(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setAllowMethods(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 102
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setAllowHeaders(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 103
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setAllowCredentials(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 104
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setMaxAge(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 105
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setPreflightHeaders(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 107
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->ZERO:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 110
    :cond_1
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 111
    invoke-static {p1, p2, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->respond(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpResponse;)V

    .line 112
    return-void
.end method

.method private static isPreflightRequest(Lio/netty/handler/codec/http/HttpRequest;)Z
    .locals 3
    .param p0, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 193
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 194
    .local v0, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    sget-object v1, Lio/netty/handler/codec/http/HttpMethod;->OPTIONS:Lio/netty/handler/codec/http/HttpMethod;

    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    .line 195
    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCESS_CONTROL_REQUEST_METHOD:Lio/netty/util/AsciiString;

    .line 196
    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 194
    :goto_0
    return v1
.end method

.method private static respond(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 3
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 243
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    .line 245
    .local v0, "keepAlive":Z
    invoke-static {p2, v0}, Lio/netty/handler/codec/http/HttpUtil;->setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 247
    invoke-interface {p0, p2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 248
    .local v1, "future":Lio/netty/channel/ChannelFuture;
    if-nez v0, :cond_0

    .line 249
    sget-object v2, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 251
    :cond_0
    return-void
.end method

.method private setAllowCredentials(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 186
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfig;->isCredentialsAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCESS_CONTROL_ALLOW_ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCESS_CONTROL_ALLOW_CREDENTIALS:Lio/netty/util/AsciiString;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 190
    :cond_0
    return-void
.end method

.method private setAllowHeaders(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 210
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCESS_CONTROL_ALLOW_HEADERS:Lio/netty/util/AsciiString;

    iget-object v2, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/cors/CorsConfig;->allowedRequestHeaders()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 211
    return-void
.end method

.method private setAllowMethods(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 206
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCESS_CONTROL_ALLOW_METHODS:Lio/netty/util/AsciiString;

    iget-object v2, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/cors/CorsConfig;->allowedRequestMethods()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 207
    return-void
.end method

.method private static setAnyOrigin(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 1
    .param p0, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 174
    const-string v0, "*"

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setOrigin(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private setExposeHeaders(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 200
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfig;->exposedHeaders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCESS_CONTROL_EXPOSE_HEADERS:Lio/netty/util/AsciiString;

    iget-object v2, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/cors/CorsConfig;->exposedHeaders()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 203
    :cond_0
    return-void
.end method

.method private setMaxAge(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 4
    .param p1, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 214
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCESS_CONTROL_MAX_AGE:Lio/netty/util/AsciiString;

    iget-object v2, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/cors/CorsConfig;->maxAge()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 215
    return-void
.end method

.method private static setNullOrigin(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 1
    .param p0, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 178
    const-string v0, "null"

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setOrigin(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private static setOrigin(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)V
    .locals 2
    .param p0, "response"    # Lio/netty/handler/codec/http/HttpResponse;
    .param p1, "origin"    # Ljava/lang/String;

    .line 182
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ACCESS_CONTROL_ALLOW_ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 183
    return-void
.end method

.method private setOrigin(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 4
    .param p1, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 140
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "origin":Ljava/lang/String;
    if-eqz v0, :cond_4

    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    if-eqz v1, :cond_4

    .line 142
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/cors/CorsConfig;->isNullOriginAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {p1}, Lio/netty/handler/codec/http/cors/CorsHandler;->setNullOrigin(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 144
    return v2

    .line 146
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/cors/CorsConfig;->isAnyOriginSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/cors/CorsConfig;->isCredentialsAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/cors/CorsHandler;->echoRequestOrigin(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 149
    invoke-static {p1}, Lio/netty/handler/codec/http/cors/CorsHandler;->setVaryHeader(Lio/netty/handler/codec/http/HttpResponse;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p1}, Lio/netty/handler/codec/http/cors/CorsHandler;->setAnyOrigin(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 153
    :goto_0
    return v2

    .line 155
    :cond_2
    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/cors/CorsConfig;->origins()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-static {p1, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setOrigin(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Lio/netty/handler/codec/http/cors/CorsHandler;->setVaryHeader(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 158
    return v2

    .line 160
    :cond_3
    sget-object v1, Lio/netty/handler/codec/http/cors/CorsHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v2, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/cors/CorsConfig;->origins()Ljava/util/Set;

    move-result-object v2

    const-string v3, "Request origin [{}]] was not among the configured origins [{}]"

    invoke-interface {v1, v3, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private setPreflightHeaders(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 121
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/cors/CorsConfig;->preflightResponseHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 122
    return-void
.end method

.method private static setVaryHeader(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 3
    .param p0, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 170
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->VARY:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 171
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_1

    .line 83
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->request:Lio/netty/handler/codec/http/HttpRequest;

    .line 84
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->ORIGIN:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "origin":Ljava/lang/String;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->getForOrigin(Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfig;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    .line 86
    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-static {v1}, Lio/netty/handler/codec/http/cors/CorsHandler;->isPreflightRequest(Lio/netty/handler/codec/http/HttpRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/http/cors/CorsHandler;->handlePreflight(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V

    .line 88
    return-void

    .line 90
    :cond_0
    iget-boolean v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->isShortCircuit:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-static {p1, v1}, Lio/netty/handler/codec/http/cors/CorsHandler;->forbidden(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V

    .line 92
    return-void

    .line 95
    .end local v0    # "origin":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 96
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

    .line 220
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsHandler;->config:Lio/netty/handler/codec/http/cors/CorsConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfig;->isCorsSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 221
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 222
    .local v0, "response":Lio/netty/handler/codec/http/HttpResponse;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setOrigin(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setAllowCredentials(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 224
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cors/CorsHandler;->setExposeHeaders(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 227
    .end local v0    # "response":Lio/netty/handler/codec/http/HttpResponse;
    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 228
    return-void
.end method
