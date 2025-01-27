.class public Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "HttpServerKeepAliveHandler.java"


# static fields
.field private static final MULTIPART_PREFIX:Ljava/lang/String; = "multipart"


# instance fields
.field private pendingResponses:I

.field private persistentConnection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    return-void
.end method

.method private static isInformational(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 2
    .param p0, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 120
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass()Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMultipart(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 8
    .param p0, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 124
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 126
    const-string v1, "multipart"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const-string v5, "multipart"

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    :goto_0
    return v1
.end method

.method private static isSelfDefinedMessageLength(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 2
    .param p0, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 115
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->isMultipart(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->isInformational(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    sget-object v1, Lio/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 115
    :goto_1
    return v0
.end method

.method private shouldKeepAlive()Z
    .locals 1

    .line 97
    iget v0, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private trackResponse(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 91
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->isInformational(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget v0, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    .line 94
    :cond_0
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

    .line 57
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    .line 59
    .local v0, "request":Lio/netty/handler/codec/http/HttpRequest;
    iget-boolean v1, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    if-eqz v1, :cond_0

    .line 60
    iget v1, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    .line 61
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    iput-boolean v1, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    .line 64
    .end local v0    # "request":Lio/netty/handler/codec/http/HttpRequest;
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_2

    .line 71
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 72
    .local v0, "response":Lio/netty/handler/codec/http/HttpResponse;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->trackResponse(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 74
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->isSelfDefinedMessageLength(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    iput v2, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->pendingResponses:I

    .line 77
    iput-boolean v2, p0, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->persistentConnection:Z

    .line 80
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->shouldKeepAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    invoke-static {v0, v2}, Lio/netty/handler/codec/http/HttpUtil;->setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 84
    .end local v0    # "response":Lio/netty/handler/codec/http/HttpResponse;
    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpServerKeepAliveHandler;->shouldKeepAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    sget-object v1, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p3

    .line 87
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 88
    return-void
.end method
