.class public abstract Lio/netty/handler/codec/MessageToMessageDecoder;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "MessageToMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;"
    }
.end annotation


# instance fields
.field private final matcher:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 59
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageDecoder;, "Lio/netty/handler/codec/MessageToMessageDecoder<TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 60
    const-class v0, Lio/netty/handler/codec/MessageToMessageDecoder;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageDecoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 61
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

    .line 68
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageDecoder;, "Lio/netty/handler/codec/MessageToMessageDecoder<TI;>;"
    .local p1, "inboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 69
    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageDecoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 70
    return-void
.end method


# virtual methods
.method public acceptInboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageDecoder;, "Lio/netty/handler/codec/MessageToMessageDecoder<TI;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageDecoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageDecoder;, "Lio/netty/handler/codec/MessageToMessageDecoder<TI;>;"
    invoke-static {}, Lio/netty/handler/codec/CodecOutputList;->newInstance()Lio/netty/handler/codec/CodecOutputList;

    move-result-object v0

    .line 84
    .local v0, "out":Lio/netty/handler/codec/CodecOutputList;
    :try_start_0
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageToMessageDecoder;->acceptInboundMessage(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 86
    move-object v1, p2

    .line 88
    .local v1, "cast":Ljava/lang/Object;, "TI;"
    :try_start_1
    invoke-virtual {p0, p1, v1, v0}, Lio/netty/handler/codec/MessageToMessageDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 91
    nop

    .line 92
    .end local v1    # "cast":Ljava/lang/Object;, "TI;"
    goto :goto_0

    .line 90
    .restart local v1    # "cast":Ljava/lang/Object;, "TI;"
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 91
    nop

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    throw v2

    .line 93
    .end local v1    # "cast":Ljava/lang/Object;, "TI;"
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0, p2}, Lio/netty/handler/codec/CodecOutputList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :goto_0
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v1

    .line 101
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 102
    invoke-virtual {v0, v2}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 105
    .end local v1    # "size":I
    nop

    .line 106
    return-void

    .line 100
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v2, v1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    throw v2

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Lio/netty/handler/codec/DecoderException;
    nop

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .end local v1    # "e":Lio/netty/handler/codec/DecoderException;
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v2

    .line 101
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_2

    .line 102
    invoke-virtual {v0, v3}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 104
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 105
    .end local v2    # "size":I
    throw v1
.end method

.method protected abstract decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
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
.end method
