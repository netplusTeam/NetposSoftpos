.class public final Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;
.super Ljava/lang/Object;
.source "WebSocketChunkedInput.java"

# interfaces
.implements Lio/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/stream/ChunkedInput<",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private final input:Lio/netty/handler/stream/ChunkedInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private final rsv:I


# direct methods
.method public constructor <init>(Lio/netty/handler/stream/ChunkedInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "input":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<Lio/netty/buffer/ByteBuf;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;-><init>(Lio/netty/handler/stream/ChunkedInput;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/stream/ChunkedInput;I)V
    .locals 1
    .param p2, "rsv"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;I)V"
        }
    .end annotation

    .line 50
    .local p1, "input":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<Lio/netty/buffer/ByteBuf;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "input"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/stream/ChunkedInput;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    .line 52
    iput p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->rsv:I

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->close()V

    .line 70
    return-void
.end method

.method public isEndOfInput()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 107
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public progress()J
    .locals 2

    .line 112
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v0

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 4
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0, p1}, Lio/netty/handler/stream/ChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 99
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_0

    .line 100
    const/4 v1, 0x0

    return-object v1

    .line 102
    :cond_0
    new-instance v1, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v2}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v2

    iget v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->rsv:I

    invoke-direct {v1, v2, v3, v0}, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    return-object v1
.end method

.method public readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketChunkedInput;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object p1

    return-object p1
.end method
