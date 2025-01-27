.class public abstract Lio/netty/handler/codec/MessageToByteEncoder;
.super Lio/netty/channel/ChannelOutboundHandlerAdapter;
.source "MessageToByteEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelOutboundHandlerAdapter;"
    }
.end annotation


# instance fields
.field private final matcher:Lio/netty/util/internal/TypeParameterMatcher;

.field private final preferDirect:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 55
    .local p0, "this":Lio/netty/handler/codec/MessageToByteEncoder;, "Lio/netty/handler/codec/MessageToByteEncoder<TI;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>(Z)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TI;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lio/netty/handler/codec/MessageToByteEncoder;, "Lio/netty/handler/codec/MessageToByteEncoder<TI;>;"
    .local p1, "outboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>(Ljava/lang/Class;Z)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "preferDirect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TI;>;Z)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/netty/handler/codec/MessageToByteEncoder;, "Lio/netty/handler/codec/MessageToByteEncoder<TI;>;"
    .local p1, "outboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    .line 86
    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToByteEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 87
    iput-boolean p2, p0, Lio/netty/handler/codec/MessageToByteEncoder;->preferDirect:Z

    .line 88
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2
    .param p1, "preferDirect"    # Z

    .line 72
    .local p0, "this":Lio/netty/handler/codec/MessageToByteEncoder;, "Lio/netty/handler/codec/MessageToByteEncoder<TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    .line 73
    const-class v0, Lio/netty/handler/codec/MessageToByteEncoder;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToByteEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 74
    iput-boolean p1, p0, Lio/netty/handler/codec/MessageToByteEncoder;->preferDirect:Z

    .line 75
    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/netty/handler/codec/MessageToByteEncoder;, "Lio/netty/handler/codec/MessageToByteEncoder<TI;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToByteEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "preferDirect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;Z)",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    .local p0, "this":Lio/netty/handler/codec/MessageToByteEncoder;, "Lio/netty/handler/codec/MessageToByteEncoder<TI;>;"
    .local p2, "msg":Ljava/lang/Object;, "TI;"
    if-eqz p3, :cond_0

    .line 140
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected abstract encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected isPreferDirect()Z
    .locals 1

    .line 158
    .local p0, "this":Lio/netty/handler/codec/MessageToByteEncoder;, "Lio/netty/handler/codec/MessageToByteEncoder<TI;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/MessageToByteEncoder;->preferDirect:Z

    return v0
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

    .line 100
    .local p0, "this":Lio/netty/handler/codec/MessageToByteEncoder;, "Lio/netty/handler/codec/MessageToByteEncoder<TI;>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageToByteEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    move-object v1, p2

    .line 105
    .local v1, "cast":Ljava/lang/Object;, "TI;"
    iget-boolean v2, p0, Lio/netty/handler/codec/MessageToByteEncoder;->preferDirect:Z

    invoke-virtual {p0, p1, v1, v2}, Lio/netty/handler/codec/MessageToByteEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;

    move-result-object v2
    :try_end_0
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v2

    .line 107
    :try_start_1
    invoke-virtual {p0, p1, v1, v0}, Lio/netty/handler/codec/MessageToByteEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 110
    nop

    .line 112
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-interface {p1, v0, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 116
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1, v2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 118
    :goto_0
    const/4 v0, 0x0

    .line 119
    .end local v1    # "cast":Ljava/lang/Object;, "TI;"
    goto :goto_1

    .line 109
    .restart local v1    # "cast":Ljava/lang/Object;, "TI;"
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 110
    nop

    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v2

    .line 120
    .end local v1    # "cast":Ljava/lang/Object;, "TI;"
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_2
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :goto_1
    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 131
    :cond_2
    return-void

    .line 124
    :catchall_1
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v2, Lio/netty/handler/codec/EncoderException;

    invoke-direct {v2, v1}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v2

    .line 122
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lio/netty/handler/codec/EncoderException;
    nop

    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 127
    .end local v1    # "e":Lio/netty/handler/codec/EncoderException;
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 130
    :cond_3
    throw v1
.end method
