.class public final Lio/netty/handler/codec/http/HttpServerCodec;
.super Lio/netty/channel/CombinedChannelDuplexHandler;
.source "HttpServerCodec.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;,
        Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/CombinedChannelDuplexHandler<",
        "Lio/netty/handler/codec/http/HttpRequestDecoder;",
        "Lio/netty/handler/codec/http/HttpResponseEncoder;",
        ">;",
        "Lio/netty/handler/codec/http/HttpServerUpgradeHandler$SourceCodec;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    const/16 v0, 0x1000

    const/16 v1, 0x2000

    invoke-direct {p0, v0, v1, v1}, Lio/netty/handler/codec/http/HttpServerCodec;-><init>(III)V

    .line 45
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I

    .line 50
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpServerCodec;->queue:Ljava/util/Queue;

    .line 51
    new-instance v0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;-><init>(Lio/netty/handler/codec/http/HttpServerCodec;III)V

    new-instance v1, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;-><init>(Lio/netty/handler/codec/http/HttpServerCodec;Lio/netty/handler/codec/http/HttpServerCodec$1;)V

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/HttpServerCodec;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 53
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 7
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "validateHeaders"    # Z

    .line 58
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpServerCodec;->queue:Ljava/util/Queue;

    .line 59
    new-instance v0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;-><init>(Lio/netty/handler/codec/http/HttpServerCodec;IIIZ)V

    new-instance v1, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;-><init>(Lio/netty/handler/codec/http/HttpServerCodec;Lio/netty/handler/codec/http/HttpServerCodec$1;)V

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/HttpServerCodec;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 61
    return-void
.end method

.method public constructor <init>(IIIZI)V
    .locals 8
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "validateHeaders"    # Z
    .param p5, "initialBufferSize"    # I

    .line 67
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpServerCodec;->queue:Ljava/util/Queue;

    .line 68
    new-instance v0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;-><init>(Lio/netty/handler/codec/http/HttpServerCodec;IIIZI)V

    new-instance v1, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerResponseEncoder;-><init>(Lio/netty/handler/codec/http/HttpServerCodec;Lio/netty/handler/codec/http/HttpServerCodec$1;)V

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/HttpServerCodec;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 72
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http/HttpServerCodec;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpServerCodec;

    .line 32
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpServerCodec;->queue:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public upgradeFrom(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 80
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 81
    return-void
.end method
