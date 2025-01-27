.class public abstract Lio/netty/handler/codec/MessageToMessageEncoder;
.super Lio/netty/channel/ChannelOutboundHandlerAdapter;
.source "MessageToMessageEncoder.java"


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


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 59
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageEncoder;, "Lio/netty/handler/codec/MessageToMessageEncoder<TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    .line 60
    const-class v0, Lio/netty/handler/codec/MessageToMessageEncoder;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

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
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageEncoder;, "Lio/netty/handler/codec/MessageToMessageEncoder<TI;>;"
    .local p1, "outboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    .line 69
    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 70
    return-void
.end method

.method private static writePromiseCombiner(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "out"    # Lio/netty/handler/codec/CodecOutputList;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 135
    new-instance v0, Lio/netty/util/concurrent/PromiseCombiner;

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/PromiseCombiner;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 136
    .local v0, "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 137
    invoke-virtual {p1, v1}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Future;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p2}, Lio/netty/util/concurrent/PromiseCombiner;->finish(Lio/netty/util/concurrent/Promise;)V

    .line 140
    return-void
.end method

.method private static writeVoidPromise(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;)V
    .locals 3
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "out"    # Lio/netty/handler/codec/CodecOutputList;

    .line 128
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 129
    .local v0, "voidPromise":Lio/netty/channel/ChannelPromise;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 130
    invoke-virtual {p1, v1}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_0
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

    .line 77
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageEncoder;, "Lio/netty/handler/codec/MessageToMessageEncoder<TI;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
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

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageEncoder;, "Lio/netty/handler/codec/MessageToMessageEncoder<TI;>;"
    const/4 v0, 0x0

    .line 84
    .local v0, "out":Lio/netty/handler/codec/CodecOutputList;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageToMessageEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-static {}, Lio/netty/handler/codec/CodecOutputList;->newInstance()Lio/netty/handler/codec/CodecOutputList;

    move-result-object v2
    :try_end_0
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v2

    .line 87
    move-object v2, p2

    .line 89
    .local v2, "cast":Ljava/lang/Object;, "TI;"
    :try_start_1
    invoke-virtual {p0, p1, v2, v0}, Lio/netty/handler/codec/MessageToMessageEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 92
    nop

    .line 94
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    .end local v2    # "cast":Ljava/lang/Object;, "TI;"
    goto :goto_0

    .line 95
    .restart local v2    # "cast":Ljava/lang/Object;, "TI;"
    :cond_0
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 96
    const/4 v0, 0x0

    .line 98
    new-instance v3, Lio/netty/handler/codec/EncoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must produce at least one message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v3

    .line 91
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 92
    nop

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v3

    .line 102
    .end local v2    # "cast":Ljava/lang/Object;, "TI;"
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_2
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :goto_0
    if-eqz v0, :cond_5

    .line 110
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 111
    .local v2, "sizeMinusOne":I
    if-nez v2, :cond_2

    .line 112
    invoke-virtual {v0, v1}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 113
    :cond_2
    if-lez v2, :cond_4

    .line 116
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    if-ne p3, v1, :cond_3

    .line 117
    invoke-static {p1, v0}, Lio/netty/handler/codec/MessageToMessageEncoder;->writeVoidPromise(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;)V

    goto :goto_1

    .line 119
    :cond_3
    invoke-static {p1, v0, p3}, Lio/netty/handler/codec/MessageToMessageEncoder;->writePromiseCombiner(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;Lio/netty/channel/ChannelPromise;)V

    .line 122
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 125
    .end local v2    # "sizeMinusOne":I
    :cond_5
    return-void

    .line 106
    :catchall_1
    move-exception v2

    .line 107
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    new-instance v3, Lio/netty/handler/codec/EncoderException;

    invoke-direct {v3, v2}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v3

    .line 104
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Lio/netty/handler/codec/EncoderException;
    nop

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 109
    .end local v2    # "e":Lio/netty/handler/codec/EncoderException;
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_2
    move-exception v2

    if-eqz v0, :cond_9

    .line 110
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 111
    .local v3, "sizeMinusOne":I
    if-eqz v3, :cond_7

    .line 113
    if-lez v3, :cond_8

    .line 116
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    if-ne p3, v1, :cond_6

    .line 117
    invoke-static {p1, v0}, Lio/netty/handler/codec/MessageToMessageEncoder;->writeVoidPromise(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;)V

    goto :goto_2

    .line 119
    :cond_6
    invoke-static {p1, v0, p3}, Lio/netty/handler/codec/MessageToMessageEncoder;->writePromiseCombiner(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;Lio/netty/channel/ChannelPromise;)V

    goto :goto_2

    .line 112
    :cond_7
    invoke-virtual {v0, v1}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 122
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 124
    .end local v3    # "sizeMinusOne":I
    :cond_9
    throw v2
.end method
