.class public Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "WebSocket00FrameEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
        ">;",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final _0X00:Lio/netty/buffer/ByteBuf;

.field private static final _0XFF:Lio/netty/buffer/ByteBuf;

.field private static final _0XFF_0X00:Lio/netty/buffer/ByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    nop

    .line 35
    const/4 v0, 0x1

    invoke-static {v0, v0}, Lio/netty/buffer/Unpooled;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    sput-object v1, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0X00:Lio/netty/buffer/ByteBuf;

    .line 36
    nop

    .line 37
    invoke-static {v0, v0}, Lio/netty/buffer/Unpooled;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0XFF:Lio/netty/buffer/ByteBuf;

    .line 38
    nop

    .line 39
    const/4 v0, 0x2

    invoke-static {v0, v0}, Lio/netty/buffer/Unpooled;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0XFF_0X00:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
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

    .line 43
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 47
    .local v0, "data":Lio/netty/buffer/ByteBuf;
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0X00:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0XFF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v0    # "data":Lio/netty/buffer/ByteBuf;
    goto/16 :goto_1

    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->_0XFF_0X00:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 57
    .restart local v0    # "data":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 59
    .local v1, "dataLen":I
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 60
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x1

    .line 63
    .local v3, "release":Z
    const/16 v4, -0x80

    :try_start_0
    invoke-virtual {v2, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 66
    ushr-int/lit8 v4, v1, 0x1c

    and-int/lit8 v4, v4, 0x7f

    .line 67
    .local v4, "b1":I
    ushr-int/lit8 v5, v1, 0xe

    and-int/lit8 v5, v5, 0x7f

    .line 68
    .local v5, "b2":I
    ushr-int/lit8 v6, v1, 0x7

    and-int/lit8 v6, v6, 0x7f

    .line 69
    .local v6, "b3":I
    and-int/lit8 v7, v1, 0x7f

    .line 70
    .local v7, "b4":I
    if-nez v4, :cond_4

    .line 71
    if-nez v5, :cond_3

    .line 72
    if-nez v6, :cond_2

    .line 73
    invoke-virtual {v2, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 75
    :cond_2
    or-int/lit16 v8, v6, 0x80

    invoke-virtual {v2, v8}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 76
    invoke-virtual {v2, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 79
    :cond_3
    or-int/lit16 v8, v5, 0x80

    invoke-virtual {v2, v8}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 80
    or-int/lit16 v8, v6, 0x80

    invoke-virtual {v2, v8}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 81
    invoke-virtual {v2, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 84
    :cond_4
    or-int/lit16 v8, v4, 0x80

    invoke-virtual {v2, v8}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 85
    or-int/lit16 v8, v5, 0x80

    invoke-virtual {v2, v8}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 86
    or-int/lit16 v8, v6, 0x80

    invoke-virtual {v2, v8}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 87
    invoke-virtual {v2, v7}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 91
    :goto_0
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    const/4 v3, 0x0

    .line 95
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v6    # "b3":I
    .end local v7    # "b4":I
    if-eqz v3, :cond_5

    .line 96
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 100
    .end local v0    # "data":Lio/netty/buffer/ByteBuf;
    .end local v1    # "dataLen":I
    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "release":Z
    :cond_5
    :goto_1
    return-void

    .line 95
    .restart local v0    # "data":Lio/netty/buffer/ByteBuf;
    .restart local v1    # "dataLen":I
    .restart local v2    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v3    # "release":Z
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_6

    .line 96
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 98
    :cond_6
    throw v4
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p2, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V

    return-void
.end method
