.class public Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;
.super Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
.source "TextWebSocketFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "binaryData"    # Lio/netty/buffer/ByteBuf;

    .line 51
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->fromText(Ljava/lang/String;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ZILio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "finalFragment"    # Z
    .param p2, "rsv"    # I
    .param p3, "binaryData"    # Lio/netty/buffer/ByteBuf;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    .line 88
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 1
    .param p1, "finalFragment"    # Z
    .param p2, "rsv"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 65
    invoke-static {p3}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->fromText(Ljava/lang/String;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    .line 66
    return-void
.end method

.method private static fromText(Ljava/lang/String;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 69
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    :goto_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->copy()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;
    .locals 1

    .line 99
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->copy()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->copy()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->duplicate()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;
    .locals 1

    .line 104
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->duplicate()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->duplicate()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;
    .locals 3
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 114
    new-instance v0, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->isFinalFragment()Z

    move-result v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->rsv()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->retain()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->retain(I)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;
    .locals 0

    .line 119
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->retain()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 120
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;
    .locals 0
    .param p1, "increment"    # I

    .line 125
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->retain(I)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 126
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->retain()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->retain(I)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->retain()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->retain(I)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->retainedDuplicate()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;
    .locals 1

    .line 109
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->retainedDuplicate()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->retainedDuplicate()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public text()Ljava/lang/String;
    .locals 2

    .line 94
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->touch()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;
    .locals 0

    .line 131
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->touch()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 132
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 137
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 138
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->touch()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->touch()Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    move-result-object p1

    return-object p1
.end method
