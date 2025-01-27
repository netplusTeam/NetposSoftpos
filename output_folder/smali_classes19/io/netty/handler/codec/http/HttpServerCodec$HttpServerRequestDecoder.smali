.class final Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;
.super Lio/netty/handler/codec/http/HttpRequestDecoder;
.source "HttpServerCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpServerCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HttpServerRequestDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/HttpServerCodec;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;III)V
    .locals 0
    .param p2, "maxInitialLineLength"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "maxChunkSize"    # I

    .line 85
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    .line 86
    invoke-direct {p0, p2, p3, p4}, Lio/netty/handler/codec/http/HttpRequestDecoder;-><init>(III)V

    .line 87
    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;IIIZ)V
    .locals 0
    .param p2, "maxInitialLineLength"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "maxChunkSize"    # I
    .param p5, "validateHeaders"    # Z

    .line 90
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    .line 91
    invoke-direct {p0, p2, p3, p4, p5}, Lio/netty/handler/codec/http/HttpRequestDecoder;-><init>(IIIZ)V

    .line 92
    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;IIIZI)V
    .locals 6
    .param p2, "maxInitialLineLength"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "maxChunkSize"    # I
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I

    .line 96
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    .line 97
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpRequestDecoder;-><init>(IIIZI)V

    .line 98
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
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

    .line 102
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    .local v0, "oldSize":I
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpRequestDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 104
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 105
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 106
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 107
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lio/netty/handler/codec/http/HttpServerCodec$HttpServerRequestDecoder;->this$0:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-static {v4}, Lio/netty/handler/codec/http/HttpServerCodec;->access$100(Lio/netty/handler/codec/http/HttpServerCodec;)Ljava/util/Queue;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v5}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
